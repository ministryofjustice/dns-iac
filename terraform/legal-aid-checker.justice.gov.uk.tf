module "legal_aid_checker_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "legal-aid-checker.justice.gov.uk"
  tags = {
    application            = "Legal Aid Agency/LAA"
    business-unit          = "HQ"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    owner                  = "None"
    component              = "None"
  }
}

module "legal_aid_checker_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.legal_aid_checker_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "legal-aid-checker.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d37wz3v9mlu31k.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "legal-aid-checker.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-759.awsdns-30.net.",
        "ns-1095.awsdns-08.org.",
        "ns-285.awsdns-35.com.",
        "ns-1948.awsdns-51.co.uk."
      ]
    },
    {
      name = "_9481e6b6eca630055932d5902ca2c867.legal-aid-checker.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_7c3cd1c881876750f01ce58aa5ca2f8b.cbwbddjkwp.acm-validations.aws."
      ]
    },
    {
      name = "www.legal-aid-checker.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = true
      }
    }
  ]
}

moved {
  from = module.legal_aid_checker_justice_gov_uk.aws_route53_record.default
  to   = module.legal_aid_checker_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.legal_aid_checker_justice_gov_uk.aws_route53_zone.default
  to   = module.legal_aid_checker_justice_gov_uk_zone.aws_route53_zone.this
}
