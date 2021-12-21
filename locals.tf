locals {
  default_tags = {
    Terraform              = "true"
    business-unit          = "Platforms"
    application            = "dns-iac"
    is-production          = "true"
    environment-name       = "production"
    owner                  = "Operations Engineering: operations-engineering@digital.justice.gov.uk"
    infrastructure-support = "Operations Engineering: operations-engineering@digital.justice.gov.uk"
    runbook                = ""
    source-code            = "https://github.com/ministryofjustice/dns-iac"
  }
}
