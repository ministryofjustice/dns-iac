module "sts_test_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "sts.test.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "sts_test_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.sts_test_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "sts.test.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "195.59.75.143"
      ]
    },
    {
      name = "sts.test.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1810.awsdns-34.co.uk.",
        "ns-760.awsdns-31.net.",
        "ns-401.awsdns-50.com.",
        "ns-1234.awsdns-26.org."
      ]
    }
  ]
}

moved {
  from = module.sts_test_justice_gov_uk.aws_route53_record.default
  to   = module.sts_test_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.sts_test_justice_gov_uk.aws_route53_zone.default
  to   = module.sts_test_justice_gov_uk_zone.aws_route53_zone.this
}
