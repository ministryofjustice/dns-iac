import os
import boto3
from datetime import datetime, timedelta
import json

def fetch_cloudwatch_metrics(hosted_zone_id, day_offset):
    """Returns DNS query metrics for a specified Hosted Zone.
       This requires authentication with AWS.
    """
    print(f"Fetching metrics for Hosted Zone ID: {hosted_zone_id} from the last {day_offset} days...")
    
    generate_metric_query(hosted_zone_id, day_offset)


def generate_metric_query(hosted_zone_id, day_offset):

    # Initiate instance of AWS SDK CLI
    client = boto3.client('cloudwatch', region_name='us-east-1')

    start_time = (datetime.now() - timedelta(days=day_offset)).strftime("%Y-%m-%d")
    end_time = (datetime.now()).strftime("%Y-%m-%d")

    response = client.get_metric_data(
        MetricDataQueries=[
            {
                'Id': 'my_dns_query',
                'MetricStat': {
                    'Metric': {
                        'Namespace': 'AWS/Route53',
                        'MetricName': 'DNSQueries',
                        'Dimensions': [
                            {
                                'Name': 'HostedZoneId',
                                'Value': hosted_zone_id
                            },
                        ]
                    },
                    'Period': 86400,
                    'Stat': 'Sum',
                },
                'ReturnData': True,
            },
        ],
        StartTime=start_time,
        EndTime=end_time
    )

    determine_action(len(response['MetricDataResults'][0]['Values']))
    
def determine_action(count):
    
    print(f"The hosted zone was called at least once {count} days out of a possible 30 days.")
    

fetch_cloudwatch_metrics('<INSERT ZONE ID>', 30)
