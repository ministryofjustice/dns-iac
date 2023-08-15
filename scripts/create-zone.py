#!/usr/bin/env python3

import subprocess
from jinja2 import Template
from lib.HostedZone import HostedZone


# USER ACTION
# ----------------------------------------------------
# List of zone names to process
ZONE_NAMES = ["zone1", "zone2"]

# Toggle auto-import behavior
AUTO_IMPORT = False

# ----------------------------------------------------
# END USER ACTION


# Utility function to remove trailing dot from a string
def remove_dot(s):
    return s[:-1] if s.endswith('.') else s


# Utility function to fetch Terraform state records for a module
def return_records_in_state(module_name):
    cmd = f"terraform state list | grep module.{module_name}"
    result = subprocess.run(
        cmd,
        shell=True,
        stderr=subprocess.PIPE,
        stdout=subprocess.PIPE,
        cwd="terraform")
    return result.stdout.decode().splitlines()


# Generate the import command for a resource
def generate_import_commands(resource_name, resource_id):
    return f"terraform import {resource_name} {resource_id}".replace(u"\\052", u"*").replace(u"\\043", u"#")


# Import a resource and return the import command
def import_resource(resource_name, resource_id):
    return generate_import_commands(resource_name, resource_id)


# Create template file
with open('scripts/templates/hosted-zone.j2') as file_:
    template = Template(file_.read(), trim_blocks=True, lstrip_blocks=True)


# Loop through each zone name
for z in ZONE_NAMES:
    # Create a HostedZone object for the current zone name
    zone = HostedZone.createFromName(z)

    # Check if the zone is valid
    if remove_dot(zone.zone['HostedZone']['Name']) != z:
        print(
            f"Skipping {z} as lookup failed, most likely a subdomain in a zone")
        continue

    # Render the template using the zone data
    hosted_zone_render = template.render(
        name=z,
        zone=zone.zone,
        tags=zone.get_tags(),
        records=zone.get_records()
    )

    # Write the rendered template to a Terraform file
    with open(f"terraform/{z}.tf", "w") as fh:
        fh.write(hosted_zone_render)

    # Generate a safe zone name by replacing dots with underscores
    safe_zone_name = z.replace('.', '_')

    # Initialize Terraform in the target directory
    subprocess.run("terraform init", shell=True, cwd="terraform",
                   stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    # Fetch existing state records for the zone module
    zone_state = return_records_in_state(f"{safe_zone_name}_zone")

    # Import the zone resource if not present in state
    if not any(safe_zone_name in s for s in zone_state) and AUTO_IMPORT:
        import_cmd = import_resource(
            f"module.{safe_zone_name}_zone.aws_route53_zone.this", zone.id)
        print(f"Importing zone for {z} under AUTO_IMPORT...")
        result = subprocess.run(import_cmd, shell=True, stdout=subprocess.PIPE,
                                cwd="terraform", stderr=subprocess.PIPE)
        if result.returncode != 0:
            print(
                f"Failed to import zone for {z}. Error: {result.stderr.decode()}")

    elif not AUTO_IMPORT:
        print(f"For manual import (zone):")
        print(import_resource(
            f"module.{safe_zone_name}_zone.aws_route53_zone.this", zone.id))

    # Fetch existing state records for the records module
    records_state = return_records_in_state(f"{safe_zone_name}_records")

    # Loop through each record in the zone and import under AUTO_IMPORT or print manual command
    for record in zone.get_records():

        # Construct two record names - the first one is for Terraform import, it needs an escaped \", the second was is for the code - likely a better way to handle this
        safe_record_name = f"module.{safe_zone_name}_records.aws_route53_record.this[\"{record['Name']}_{record['Type']}\"]"
        record_name = f"module.{safe_zone_name}_records.aws_route53_record.this[\\\"{record['Name']}_{record['Type']}\\\"]"

        # Check if the record is already in the state
        if not any(safe_record_name in s for s in records_state) and AUTO_IMPORT:

            # Import the resource
            import_cmd = import_resource(
                record_name, f"{zone.id}_{record['Name']}_{record['Type']}")
            print(f"Importing {record_name} under AUTO_IMPORT...")

            # Print result and error check
            result = subprocess.run(import_cmd, shell=True, stdout=subprocess.PIPE,
                                    cwd="terraform", stderr=subprocess.PIPE)
            if result.returncode != 0:
                print(
                    f"Failed to import {record_name}. Error: {result.stderr.decode()}")

        elif not AUTO_IMPORT:

            # Print instructions
            if not any(safe_record_name in s for s in records_state):
                print(generate_import_commands(record_name,
                                               f"{zone.id}_{record['Name']}_{record['Type']}"))
