import boto3


class HostedZone:
    """This class should only be used to read data from AWS Route53 - it is not built to impact changes to anything in Route53
    """

    def __init__(self, id):
        """Create a HostedZone object from the ID of an AWS Route53 Hosted Zone

        Args:
            id (string): ID of an AWS Route53 Hosted Zone
        """

        self.client = boto3.client('route53')
        self.id = id
        self.zone = self.client.get_hosted_zone(
            Id=id
        )
        return

    @classmethod
    def createFromName(cls, name):
        """Create a HostedZone object from the name of an AWS Route53 Hosted Zone

        Args:
            name (string): Name of an AWS Route53 Hosted Zone

        Raises:
            Exception: Route53 Hosted Zone cannot be found

        Returns:
            HostedZone: HostedZone object
        """

        client = boto3.client('route53')
        zones = client.list_hosted_zones_by_name(
            DNSName=name,
            MaxItems='1'
        )

        if not zones or len(zones['HostedZones']) == 0:
            raise Exception(f"Could not find DNS zone {name}")

        return cls(zones['HostedZones'][0]['Id'].split('/')[2])

    def get_records(self):
        """Returns Records in Hosted Zone owned by this object

        Returns:
            list: List holding all records in Hosted Zone owned by this object
        """

        records = []
        paginator = self.client.get_paginator('list_resource_record_sets')

        for page in paginator.paginate(HostedZoneId=self.id):
            records.extend(page['ResourceRecordSets'])

        return records

    def get_tags(self):
        """Returns tags for Hosted Zone owned by this object

        Returns:
            dict: Dict holding all tags in Hosted Zone owned by this object
        """
        return self.client.list_tags_for_resource(
            ResourceType='hostedzone',
            ResourceId=self.id
        )['ResourceTagSet']['Tags']
