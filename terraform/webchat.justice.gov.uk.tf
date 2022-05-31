module "webchat_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "webchat.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "webchat_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.webchat_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "webchat.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "webchat.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-787.awsdns-34.net.",
        "ns-1741.awsdns-25.co.uk.",
        "ns-25.awsdns-03.com.",
        "ns-1467.awsdns-55.org."
      ]
    }
  ]
}

moved {
  from = module.webchat_justice_gov_uk.aws_route53_record.default
  to   = module.webchat_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.webchat_justice_gov_uk.aws_route53_zone.default
  to   = module.webchat_justice_gov_uk_zone.aws_route53_zone.this
}
