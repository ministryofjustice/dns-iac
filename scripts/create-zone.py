#!/usr/bin/env python3

from lib.HostedZone import HostedZone
from jinja2 import Template
import subprocess


# Util function
def remove_dot(s):
    return s[:-1] if s.endswith('.') else s


# Create template file
with open('scripts/templates/hosted-zone.j2') as file_:
    template = Template(file_.read(), trim_blocks=True, lstrip_blocks=True)

# ! -- USER ACTION -- !
# Put the zones you want to target here
ZONE_NAMES = ["zone1", "zone2"]
# Do you want this code to auto import
AUTO_IMPORT = True
# ! -- USER ACTION -- !


for z in ZONE_NAMES:
    # Render the template
    zone = HostedZone.createFromName(z)

    # Safety net if non zone/subdomain to zone is passed in
    if remove_dot(zone.zone['HostedZone']['Name']) != z:
        print(zone.zone['HostedZone']['Name'])
        print(
            f"Skipping {z} as lookup failed, most likely a subdomain in a zone")
        continue

    hosted_zone_render = template.render(
        name=z,
        zone=zone.zone,
        tags=zone.get_tags(),
        records=zone.get_records()
    )

    # Write the Terraform file
    with open(f"terraform/{z}.tf", "w") as fh:
        fh.write(hosted_zone_render)

    safe_zone_name = z.replace('.', '_')

    # Print out manual instructions for state
    if not AUTO_IMPORT:
        # Print state import commands (whilst authed with AWS R53)
        print("Please run the following commands before running Terraform plan/apply")
        print("Commands:")
        print("------------------")
        print("terraform init")
        print(
            f"terraform import module.{safe_zone_name}_zone.aws_route53_zone.this {zone.id}")

        for record in zone.get_records():
            print(
                f"terraform import module.{safe_zone_name}_records.aws_route53_record.this[\\\"{record['Name']}_{record['Type']}\\\"] {zone.id}_{record['Name']}_{record['Type']}")
    # Auto import state
    else:

        subprocess.run("terraform init", shell=True, cwd="terraform",
                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        cmd = f"terraform import module.{safe_zone_name}_zone.aws_route53_zone.this {zone.id}"
        result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, cwd="terraform",
                                stderr=subprocess.PIPE)

        if result.returncode == 0:
            print(f"Successfully imported: {z}")
        else:
            if "Terraform is already managing" not in result.stderr.decode():
                print(f"Failed to execute: {cmd}")
                print(result.stderr.decode())
            else:
                print(f"{z} is already maintained by Terraform")

        for record in zone.get_records():
            cmd = f"terraform import module.{safe_zone_name}_records.aws_route53_record.this[\\\"{record['Name']}_{record['Type']}\\\"] {zone.id}_{record['Name']}_{record['Type']}"
            result = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, cwd="terraform",
                                    stderr=subprocess.PIPE)

            if result.returncode == 0:
                print(f"Successfully imported: {record}")
            else:
                if "Terraform is already managing" not in result.stderr.decode():
                    print(f"Failed to execute: {cmd}")
                    print(result.stderr.decode())
                else:
                    print(f"{record} is already maintained by Terraform")
