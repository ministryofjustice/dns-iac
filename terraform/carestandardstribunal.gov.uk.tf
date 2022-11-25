module "carestandardstribunal_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "carestandardstribunal.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    component = "None"
  }
}

module "carestandardstribunal_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.carestandardstribunal_gov_uk_zone.zone_id

  records = [
    {
      name = "carestandardstribunal.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "carestandardstribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-94.awsdns-11.com.",
        "ns-1866.awsdns-41.co.uk.",
        "ns-1370.awsdns-43.org.",
        "ns-987.awsdns-59.net."
      ]
    },
    {
      name = "www.carestandardstribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.carestandardstribunal_gov_uk_zone.zone_id
        name                   = "carestandardstribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.carestandardstribunal_gov_uk.aws_route53_record.default
  to   = module.carestandardstribunal_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.carestandardstribunal_gov_uk.aws_route53_zone.default
  to   = module.carestandardstribunal_gov_uk_zone.aws_route53_zone.this
}
