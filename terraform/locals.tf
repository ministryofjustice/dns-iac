# Get ELB Hosted Zone ID
data "aws_elb_hosted_zone_id" "eu-west-1" {
  region = "eu-west-1"
}

# Get current caller account information (like account ID)
data "aws_caller_identity" "current" {}

# Get AWS Organizations enrolment details, to get the root account ID
data "aws_organizations_organization" "enrolment" {}

# Get AWS Organizations accounts itself
data "aws_organizations_organization" "root" {
  provider = aws.aws-root-account
}

locals {
  accounts = {
    for account in data.aws_organizations_organization.root.accounts :
    account.name => account.id
  }

  tags = {
    business-unit = "Platforms"
    is-production = true
    owner         = "Operations Engineering: operations-engineering@digital.justice.gov.uk"
    source-code   = "https://github.com/ministryofjustice/dns-iac"
  }
}
