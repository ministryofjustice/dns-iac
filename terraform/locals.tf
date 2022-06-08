# Get Elastic Load Balancer Hosted Zone ID (eu-west-1)
data "aws_elb_hosted_zone_id" "eu-west-1" {
  region = "eu-west-1"
}

# Get Elastic Load Balancer Hosted Zone ID (eu-west-2)
data "aws_elb_hosted_zone_id" "eu-west-2" {
  region = "eu-west-2"
}

# Get Elastic Beanstalk Hosted Zone ID
data "aws_elastic_beanstalk_hosted_zone" "eu-west-1" {
  region = "eu-west-1"
}

# Get current caller account information (like account ID)
data "aws_caller_identity" "current" {}

# Get AWS Organizations enrolment details, to get the root account ID
data "aws_organizations_organization" "enrolment" {}

locals {
  tags = {
    application            = "dns-iac"
    business-unit          = "Platforms"
    environment-name       = "production"
    infrastructure-support = "Operations Engineering: operations-engineering@digital.justice.gov.uk"
    is-production          = true
    owner                  = "Operations Engineering: operations-engineering@digital.justice.gov.uk"
    runbook                = "operations-engineering.service.justice.gov.uk/documentation/runbooks.html"
    source-code            = "github.com/ministryofjustice/dns-iac"
    terraform              = true
  }
  default_hosted_zone_tags = {
    is-production = false
    source-code   = "github.com/ministryofjustice/dns-iac"
    terraform     = true
  }
}

locals {
  yjb_tags = merge(local.default_hosted_zone_tags, {
    business-unit = "YJB"
    owner         = "Youth Justice Board ICT: ict@yjb.gov.uk"
  })
}
