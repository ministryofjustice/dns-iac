import os
import re
import sys
from datetime import datetime, timedelta
from subprocess import check_output


class Cname_File:
    """A struct to store terraform file/s that have cname record/s"""

    filepath: str
    number_cnames: list

    def __init__(self, a, b):
        self.filepath = a
        self.number_cnames = b


def has_grace_period_expired(filepath) -> bool:
    """Check the four week grace period has expired or not

    Args:
        filepath (string): path and name of terraform file

    Returns:
        bool: True if file last commit date was four weeks ago or more
    """

    year = 0
    month = 0
    day = 0
    # Extract the date from the git log command
    output = check_output(
        ["git", "log", "-1", "--pretty=\"%ci\"", filepath]).decode("utf-8")
    year = int(output[1:5])
    month = int(output[6:8])
    day = int(output[9:12])
    file_last_commit_date = datetime(year, month, day)
    # Today date minus four weeks
    grace_period = datetime.now() - timedelta(weeks=(4))
    if file_last_commit_date < grace_period:
        return True
    else:
        return False


def parse_terraform_files() -> list:
    """Read the Terraform files to find cname records

    Returns:
        list: Cname_File objects
    """
    cname_files = []
    # Do not parse the Terraform build files.
    exclude_files = set(
        ["main.tf", "variables.tf", "locals.tf", "versions.tf", "backend.tf",
            "terraform.lock.hcl", "s3.tf", "outputs.tf", "terraform.tfvars", "route53.tf"]
    )
    # Get all the .tf files then exclude the above files
    for _, _, files in os.walk("terraform", topdown=True):
        files[:] = [f for f in files if f not in exclude_files]
        for filename in files:
            count = 0
            filepath = "terraform/" + filename
            with open(filepath) as f:
                data = f.readlines()
            # Look for the Gandi keywords that describe a cname record
            # Some files can have multiple cname records
            for line in data:
                if 'comodoca' in line:
                    count += 1
                elif 'sectigo' in line:
                    count += 1
            cname_file = Cname_File(filepath, count)
            if count != 0:
                cname_files.append(cname_file)
    return cname_files


def get_cname_record(filepath) -> tuple:
    """Get the cname position in the Terraform file if it is an actual cname record

    Args:
        filepath (string): path to terraform file

    Returns:
        tuple: True if cname record is discovered with start and end position of the record
    """
    is_cname_record = False
    record_start = 0
    record_end = 0
    output = 0
    # Use grep to find which line number the cname is on
    # check_output() raises an exception if the command return a non okay result
    # grep returns a non okay result if the keyword is not found in the file
    # thus the nested try except block below
    try:
        output = check_output(
            ["grep", "-n", "comodoca", filepath]).decode("utf-8")
    except Exception as e:
        if 'non-zero' not in e:
            print(e)
        else:
            try:
                output = check_output(
                    ["grep", "-n", "sectigo", filepath]).decode("utf-8")
            except Exception as e:
                if 'non-zero' not in e:
                    print(e)
    # use re to read first four digits of the grep result
    re_result = re.findall(r'\d+', output[:4])
    # change grep result to an int and offset by one to work with python array
    cname_position = int(re_result[0]) - 1
    with open(filepath) as f:
        data_blob = f.readlines()
    # Check the lines before and after the cname to check it is a valid cname record
    if "{" in data_blob[cname_position - 5]:
        if "name = \"" in data_blob[cname_position - 4]:
            record_start = cname_position - 4
            if "type = \"CNAME\"" in data_blob[cname_position - 3]:
                if "ttl  =" in data_blob[cname_position - 2]:
                    if "records =" in data_blob[cname_position - 1]:
                        if "]" in data_blob[cname_position + 1]:
                            if "}" in data_blob[cname_position + 2]:
                                record_end = cname_position + 3
                                is_cname_record = True
    return is_cname_record, record_start, record_end


def remove_cnames_records():
    """Remove the cname records from the terraform files

    """
    for cname in parse_terraform_files():
        # Some files have multiple cname therefore iterate over the file multiple times
        for _ in range(cname.number_cnames):
            # Allow four weeks for cname to be used before deletion
            if has_grace_period_expired(cname.filepath):
                # Check cname is valid and start and end points of record to delete it
                is_cname_record, record_start, record_end = get_cname_record(
                    cname.filepath)
                if is_cname_record:
                    # Use sed command to delete the record from the file
                    delete_range = "{0},{1}d".format(record_start, record_end)
                    check_output(
                        ["sed", "-i", "", delete_range, cname.filepath])


print("Start")
remove_cnames_records()
print("Finished")
sys.exit(0)
