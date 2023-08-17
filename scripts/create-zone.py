#!/usr/bin/env python3

import subprocess
from jinja2 import Template
from lib.HostedZone import HostedZone

# ----------------------- CONFIGURATION -----------------------
# List of zone names to process
ZONE_NAMES = ["zone1", "zone2"]
# Flag to decide if records should be imported automatically
AUTO_IMPORT = False
# ------------------------------------------------------------

# Remove the trailing dot from a string if present


def remove_dot(s):
    return s[:-1] if s.endswith('.') else s

# Return the list of resources in the Terraform state for a specific module


def return_records_in_state(module_name):
    cmd = f"terraform state list | grep module.{module_name}"
    result = subprocess.run(
        cmd, shell=True, stderr=subprocess.PIPE, stdout=subprocess.PIPE, cwd="terraform")
    return result.stdout.decode().splitlines()

# Generate the terraform import command


def generate_import_commands(resource_name, resource_id):
    return f"terraform import {resource_name} {resource_id}".replace(u"\\052", u"*").replace(u"\\043", u"#")

# Import a specific record into Terraform or print the import command


def import_or_print_record(resource_name, record_id, auto_import=AUTO_IMPORT):
    import_cmd = generate_import_commands(resource_name, record_id)
    if auto_import:
        print(f"Importing {resource_name} under AUTO_IMPORT...")
        result = subprocess.run(import_cmd, shell=True, stdout=subprocess.PIPE,
                                cwd="terraform", stderr=subprocess.PIPE)
        if result.returncode != 0:
            print(
                f"Failed to import {resource_name}. Error: {result.stderr.decode()}")
    else:
        print(import_cmd)


# Load the Jinja template for hosted zones
with open('scripts/templates/hosted-zone.j2') as file_:
    template = Template(file_.read(), trim_blocks=True, lstrip_blocks=True)

# Process each zone
for z in ZONE_NAMES:
    zone = HostedZone.createFromName(z)

    # Check if the zone name matches, if not, it could be a subdomain
    if remove_dot(zone.zone['HostedZone']['Name']) != z:
        print(
            f"Skipping {z} as lookup failed, most likely a subdomain in a zone")
        continue

    # Render the Jinja template with the zone data
    hosted_zone_render = template.render(
        name=z, zone=zone.zone, tags=zone.get_tags(), records=zone.get_records())

    # Write the rendered template to a Terraform file
    with open(f"terraform/{z}.tf", "w") as fh:
        fh.write(hosted_zone_render)

    # Replace dots with underscores for Terraform resource naming
    safe_zone_name = z.replace('.', '_')

    # Initialize Terraform
    subprocess.run("terraform init", shell=True, cwd="terraform",
                   stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    # Check if the zone is already in Terraform state
    zone_state = return_records_in_state(f"{safe_zone_name}_zone")
    if not any(safe_zone_name in s for s in zone_state):
        import_or_print_record(
            f"module.{safe_zone_name}_zone.aws_route53_zone.this", zone.id)

    # Check if the records are in Terraform state
    records_state = return_records_in_state(f"{safe_zone_name}_records")
    for record in zone.get_records():
        record_id = f"{zone.id}_{record['Name']}_{record['Type']}"

        if 'MultiValueAnswer' in record or 'Failover' in record:
            record_id += f"_{record['SetIdentifier']}"

            # Need two record names, one to check existing state, one to run import command - probably a better way to handle this
            record_name = f'module.{safe_zone_name}_records.aws_route53_record.this["{record["Name"]}_{record["Type"]}_{record["SetIdentifier"]}"]'
            safe_record_name = f'module.{safe_zone_name}_records.aws_route53_record.this[\\"{record["Name"]}_{record["Type"]}_{record["SetIdentifier"]}\\"]'
        else:
            # Need two record names, one to check existing state, one to run import command - probably a better way to handle this
            record_name = f'module.{safe_zone_name}_records.aws_route53_record.this["{record["Name"]}_{record["Type"]}"]'
            safe_record_name = f'module.{safe_zone_name}_records.aws_route53_record.this[\\"{record["Name"]}_{record["Type"]}\\"]'

        # If the record isn't in the state, import or print the command
        if not any(record_name in s for s in records_state):
            import_or_print_record(safe_record_name, record_id)
