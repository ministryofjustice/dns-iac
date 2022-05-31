module "gfsl_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "gfsl.gov.uk"
  tags = {
    component = "None"
  }
}

module "gfsl_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.gfsl_gov_uk_zone.zone_id

  records = [
    {
      name = "gfsl.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1568.awsdns-04.co.uk.",
        "ns-787.awsdns-34.net.",
        "ns-54.awsdns-06.com.",
        "ns-1314.awsdns-36.org."
      ]
    }
  ]
}

moved {
  from = module.gfsl_gov_uk.aws_route53_record.default
  to   = module.gfsl_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.gfsl_gov_uk.aws_route53_zone.default
  to   = module.gfsl_gov_uk_zone.aws_route53_zone.this
}
