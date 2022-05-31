module "dugganinquest_independent_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "dugganinquest.independent.gov.uk"
  tags = {
    component = "None"
  }
}

module "dugganinquest_independent_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.dugganinquest_independent_gov_uk_zone.zone_id

  records = [
    {
      name = "dugganinquest.independent.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "dugganinquest.independent.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-298.awsdns-37.com.",
        "ns-2046.awsdns-63.co.uk.",
        "ns-1180.awsdns-19.org.",
        "ns-645.awsdns-16.net."
      ]
    }
  ]
}

moved {
  from = module.dugganinquest_independent_gov_uk.aws_route53_record.default
  to   = module.dugganinquest_independent_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.dugganinquest_independent_gov_uk.aws_route53_zone.default
  to   = module.dugganinquest_independent_gov_uk_zone.aws_route53_zone.this
}
