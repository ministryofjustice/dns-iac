#!/usr/bin/env python3

from lib.HostedZone import HostedZone
from jinja2 import Template

# Open up template file
with open('scripts/templates/hosted-zone.j2') as file_:
    template = Template(file_.read())


ZONE_NAME = "PUT YOUR ZONE NAME HERE, IT PRINTS OUT TO CONSOLE"
zone = HostedZone.createFromName(ZONE_NAME)
print(template.render(
    zone=zone.zone,
    tags=zone.get_tags(),
    records=zone.get_records()
))
