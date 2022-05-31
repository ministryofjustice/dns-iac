module "sts_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "sts.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "sts_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.sts_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "sts.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "157.203.177.193"
      ]
    },
    {
      name = "sts.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-596.awsdns-10.net.",
        "ns-1372.awsdns-43.org.",
        "ns-1652.awsdns-14.co.uk.",
        "ns-271.awsdns-33.com."
      ]
    }
  ]
}

moved {
  from = module.sts_justice_gov_uk.aws_route53_record.default
  to   = module.sts_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.sts_justice_gov_uk.aws_route53_zone.default
  to   = module.sts_justice_gov_uk_zone.aws_route53_zone.this
}
