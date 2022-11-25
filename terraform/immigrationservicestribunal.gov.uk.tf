module "immigrationservicestribunal_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "immigrationservicestribunal.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    component = "None"
  }
}

module "immigrationservicestribunal_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.immigrationservicestribunal_gov_uk_zone.zone_id

  records = [
    {
      name = "immigrationservicestribunal.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "immigrationservicestribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-340.awsdns-42.com.",
        "ns-881.awsdns-46.net.",
        "ns-1416.awsdns-49.org.",
        "ns-1542.awsdns-00.co.uk."
      ]
    },
    {
      name = "www.immigrationservicestribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.immigrationservicestribunal_gov_uk_zone.zone_id
        name                   = "immigrationservicestribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.immigrationservicestribunal_gov_uk.aws_route53_record.default
  to   = module.immigrationservicestribunal_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.immigrationservicestribunal_gov_uk.aws_route53_zone.default
  to   = module.immigrationservicestribunal_gov_uk_zone.aws_route53_zone.this
}
