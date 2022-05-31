module "callmeback_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "callmeback.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "callmeback_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.callmeback_justice_gov_uk_zone.zone_id    

  records = [
    {
      name = "callmeback.justice.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-1847.awsdns-38.co.uk.",
        "ns-600.awsdns-11.net.",
        "ns-309.awsdns-38.com.",
        "ns-1523.awsdns-62.org."
      ]
    }
  ]
}

moved {
  from = module.callmeback_justice_gov_uk.aws_route53_record.default
  to   = module.callmeback_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.callmeback_justice_gov_uk.aws_route53_zone.default
  to   = module.callmeback_justice_gov_uk_zone.aws_route53_zone.this
}
