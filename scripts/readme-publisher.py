import os
import boto3
from jinja2 import Template


def get_tracked_zones(folder_path):
    """
    Retrieves a list of tracked zones based on the file names in the specified folder.

    Args:
        folder_path (str): The path to the folder containing the tracked zone files.

    Returns:
        list: A list of tracked zones

    Raises:
        FileNotFoundError: If the specified folder does not exist.

    """
    tracked_zones = []

    # Get the absolute path of the folder
    folder_path = os.path.abspath(folder_path)

    # Check if the folder exists
    if not os.path.exists(folder_path):
        print(f"Folder '{folder_path}' does not exist.")
        return tracked_zones

    # Iterate over the files in the folder
    for file_name in os.listdir(folder_path):
        # Check if the item is a file
        if os.path.isfile(os.path.join(folder_path, file_name)):
            # Remove the ".tf" extension
            file_name = os.path.splitext(file_name)[0]
            tracked_zones.append(file_name)

    # Remove Terraform backend files
    for file in ['versions', 's3', 'dynamodb', 'locals', '.terraform.lock']:
        tracked_zones.remove(file)

    return tracked_zones


def get_list_of_aws_zones():
    """
    Retrieves a list of AWS Route53 zones.

    Returns:
        list: A list of AWS Route53 zones

    """

    # Create Route53 client
    client = boto3.client('route53')

    # Create paginator and iterator objects to deal with large amounts of zones & API limits
    paginator = client.get_paginator('list_hosted_zones')
    iterator = paginator.paginate(
        PaginationConfig={
            'PageSize': 50,
        }
    )

    # Paginate and filter out name
    return [zone.strip('.') for zone in iterator.search("HostedZones[].Name")]


def get_untracked_zones(aws_zones, tracked_zones):
    """

    Compares a list of zones from AWS Route53 and another list of zones

    Args:
        aws_zones (list): A list of zones from Route53
        tracked_zones (list): A list of zones (ideally from the terraform folder here)

    Returns:
        list: Route53 zones that are not tracked by this repo
    """
    return list(set(aws_zones) - set(tracked_zones))


def create_readme(tracked_zones, untracked_zones):
    with open('scripts/templates/readme.j2') as file_:
        template = Template(file_.read(), trim_blocks=True, lstrip_blocks=True)

    render = template.render(
        tracked_zones=tracked_zones,
        untracked_zones=untracked_zones
    )

    with open("README.md", "w") as fh:
        fh.write(render)

# Generate lists
folder_path = 'terraform'
tracked_zones = get_tracked_zones(folder_path)
aws_zones = get_list_of_aws_zones()
untracked_zones = get_untracked_zones(aws_zones, tracked_zones)

create_readme(tracked_zones, untracked_zones)
