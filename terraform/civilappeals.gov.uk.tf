module "civilappeals_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "civilappeals.gov.uk"

  tags = {
    component = "None"
  }
}

module "civilappeals_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.civilappeals_gov_uk_zone.zone_id

  records = [
    {
      name = "civilappeals.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "civilappeals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1139.awsdns-14.org.",
        "ns-365.awsdns-45.com.",
        "ns-1601.awsdns-08.co.uk.",
        "ns-684.awsdns-21.net."
      ]
    },
    {
      name = "www.civilappeals.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.civilappeals_gov_uk.aws_route53_record.default
  to   = module.civilappeals_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.civilappeals_gov_uk.aws_route53_zone.default
  to   = module.civilappeals_gov_uk_zone.aws_route53_zone.this
}
