module "informationtribunal_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "informationtribunal.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    component = "None"
  }
}

module "informationtribunal_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.informationtribunal_gov_uk_zone.zone_id

  records = [
    {
      name = "informationtribunal.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "informationtribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1412.awsdns-48.org.",
        "ns-584.awsdns-09.net.",
        "ns-474.awsdns-59.com.",
        "ns-1885.awsdns-43.co.uk."
      ]
    },
    {
      name = "www.informationtribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.informationtribunal_gov_uk_zone.zone_id
        name                   = "informationtribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.informationtribunal_gov_uk.aws_route53_record.default
  to   = module.informationtribunal_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.informationtribunal_gov_uk.aws_route53_zone.default
  to   = module.informationtribunal_gov_uk_zone.aws_route53_zone.this
}
