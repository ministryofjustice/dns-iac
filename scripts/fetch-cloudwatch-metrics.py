import os
import boto3
from datetime import datetime, timedelta
import sys

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

    days_called = len(response['MetricDataResults'][0]['Values'])
    
    print(f"\nThe hosted zone ({hosted_zone_id}) was called at least once {days_called} days out of a possible {day_offset} days.")
    
    ratio = day_offset / days_called
        
    if (ratio == 0):
        print('A DNS query has not been made for the hosted zone and time period specified. This should be okay to decommission.\n')
    elif (1 <= ratio <= 5):
        print('DNS queries are made very regularly for the hosted zone and time period specified. Do not decommission!\n')
    elif (5 < ratio < 30):
        print('DNS queries are made somewhat regularly for the hosted zone and time period specified. Do not decommission!\n')
    elif (ratio > 30):
        print('DNS queries are made rarely for the hosted zone and time period specified. Consider decommissioning.\n')


print("Starting script...")

if (len(sys.argv) > 3):
    print(f'Too many arguments provided! ({len(sys.argv) - 1})')
    print('Format: "python3 fetch-cloudwatch-metrics.py <zone_id> <day_offset>"')
    sys.exit(1)
else:
    hosted_zone_id = sys.argv[1]
    day_offset = int(sys.argv[2])
    if (len(hosted_zone_id) > 32):
        print('Zone ID format incorrect!')
        sys.exit(1)
    if not (30 <= day_offset <= 180):
        print('Day offset must be between 30 and 180 days.')
        sys.exit(1)
    generate_metric_query(hosted_zone_id, day_offset)
    print("Finished!")
    sys.exit()
