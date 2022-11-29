import boto3
import os

# This file returns the delta of hosted zones between the Terraform code and live AWS Route53

def get_list_of_aws_zones():
    """Returns list of names for all zones in AWS Route53
       This requires authentication with AWS Route53
    """
    # Create Route53 client
    client = boto3.client('route53')

    # Create paginator and iterator objects to deal with large amounts of zones & API limits
    paginator = client.get_paginator('list_hosted_zones')
    iterator = paginator.paginate(
        PaginationConfig= {
            'PageSize': 50, 
        }
    )

    # Paginate and filter out name
    return [zone.strip('.') for zone in iterator.search("HostedZones[].Name")]  

def get_list_of_terraform_zones():
    # Generate list of files 
    files = [file.split('.tf')[0] for file in os.listdir(r'./terraform/') if '.tf' in file]
    
    # Remove Terraform backend files
    for file in ['versions', 's3', 'dynamodb', 'locals']:
        files.remove(file)
        
    return files

aws_set = set(get_list_of_aws_zones())
terraform_set = set(get_list_of_terraform_zones())

print("Missing Hosted Zones from Terraform")
print(aws_set - terraform_set)
print("Length of missing zones")
print(len(aws_set - terraform_set))

print("Missing Hosted Zones from AWS in Terraform")
print(terraform_set - aws_set)
print("Length of missing zones")
print(len(terraform_set - aws_set))
