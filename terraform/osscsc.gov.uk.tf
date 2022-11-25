module "osscsc_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "osscsc.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    component = "None"
  }
}

module "osscsc_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.osscsc_gov_uk_zone.zone_id

  records = [
    {
      name = "osscsc.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "osscsc.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1474.awsdns-56.org.",
        "ns-622.awsdns-13.net.",
        "ns-1981.awsdns-55.co.uk.",
        "ns-470.awsdns-58.com."
      ]
    },
    {
      name = "www.osscsc.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.osscsc_gov_uk_zone.zone_id
        name                   = "osscsc.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.osscsc_gov_uk.aws_route53_record.default
  to   = module.osscsc_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.osscsc_gov_uk.aws_route53_zone.default
  to   = module.osscsc_gov_uk_zone.aws_route53_zone.this
}
