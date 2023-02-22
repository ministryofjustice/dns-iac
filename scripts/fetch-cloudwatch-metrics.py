import boto3
import sys
import argparse
from botocore.exceptions import ClientError
from datetime import datetime, timedelta

def generate_metric_query(hosted_zone_id, day_offset, region):

    # Creates a cloudwatch client for a specified region.
    client = boto3.client('cloudwatch', region_name=region)

    start_time = (datetime.now() - timedelta(days=day_offset)).strftime("%Y-%m-%d")
    end_time = (datetime.now()).strftime("%Y-%m-%d")
    
    try:
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
    except (ClientError):
        sys.exit("Your AWS tokens have expired, please resubmit them: https://moj.awsapps.com/start#/")
    
    # Determines how many days had DNS queries based on the length of the list returned.    
    days_called = len(response['MetricDataResults'][0]['Values'])
    
    # Suggests and action based on whether or not no DNS queries were made.
    if days_called == 0:
        print(f'\nA DNS query has not been made in the last {day_offset} days. This should be okay to decommission.')
    else:
        print(f'\nDNS queries have been made in the last {day_offset} days. Do not decommission!')
            
    print(f"DNS queries for the hosted zone: {hosted_zone_id} were made for {days_called} day(s) out of a possible {day_offset} day(s).\n")


print("Starting script...")

# Creates and parses certain arguments for the script to run.
parser = argparse.ArgumentParser(description='Fetch CloudWatch Metrics for Hosted Zone')
parser.add_argument("-z", "--zone", help = "The Hosted Zone ID (required).", required = True)
parser.add_argument("-r", "--region", help = "For specifying an AWS region (default = us-east-1).", required = False, default = "us-east-1")
parser.add_argument("-d", "--days", help = "For specifying the amount of days to collect data for (default = 30).", required = False, default = 30)
argument = parser.parse_args()
status = False

print(f"Arguments: Hosted Zone ID: {argument.zone}, Days: {argument.days}, Region: {argument.region}")

if (len(argument.zone) > 32):
    print('Zone ID format incorrect.')
    sys.exit(1)
if not (30 <= int(argument.days) <= 180):
    print('Day offset must be between 30 and 180 days.')
    sys.exit(1)
generate_metric_query(argument.zone, int(argument.days), argument.region)
sys.exit("Script finished successfully.")
