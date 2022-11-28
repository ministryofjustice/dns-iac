#!/usr/bin/env python3

from lib.HostedZone import HostedZone
from jinja2 import Template

# Create template file
with open('scripts/templates/hosted-zone.j2') as file_:
    template = Template(file_.read(), trim_blocks=True, lstrip_blocks=True)

# ! -- USER ACTION -- !
# Put the zone you want to target here
ZONE_NAME = "ZONE NAME GOES HERE"
# ! -- USER ACTION -- !

# Render the template
zone = HostedZone.createFromName(ZONE_NAME)
hosted_zone_render = template.render(
    name=ZONE_NAME,
    zone=zone.zone,
    tags=zone.get_tags(),
    records=zone.get_records()
)

# Write the Terraform file
with open(f"terraform/{ZONE_NAME}.tf", "w") as fh:
    fh.write(hosted_zone_render)

safe_zone_name = ZONE_NAME.replace('.', '_')

# Print state import commands (whilst authed with AWS R53)
print("Please run the following commands before running Terraform plan/apply")
print("Commands:")
print("------------------")
print("terraform init")
print(f"terraform import module.{safe_zone_name}_zone.this {zone.id}")

for record in zone.get_records():
    print(
        f"terraform import module.{safe_zone_name}_records.aws_route53_record.this[\\\"{record['Name']}_{record['Type']}\\\"] {zone.id}_{record['Name']}_{record['Type']}")
