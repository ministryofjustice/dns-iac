module "ybtj_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "ybtj.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "ybtj_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.ybtj_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "ybtj.justice.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "34.250.68.97"
      ]
    },
    {
      name = "ybtj.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1434.awsdns-51.org.",
        "ns-695.awsdns-22.net.",
        "ns-1894.awsdns-44.co.uk.",
        "ns-126.awsdns-15.com."
      ]
    },
    {
      name = "www.ybtj.justice.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "34.250.68.97"
      ]
    }
  ]
}

moved {
  from = module.ybtj_justice_gov_uk.aws_route53_record.default
  to   = module.ybtj_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.ybtj_justice_gov_uk.aws_route53_zone.default
  to   = module.ybtj_justice_gov_uk_zone.aws_route53_zone.this
}
