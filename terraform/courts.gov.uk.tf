module "courts_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "courts.gov.uk"
  tags = {
    component = "None"
  }
}

module "courts_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.courts_gov_uk_zone.zone_id

  records = [
    {
      name = "courts.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "courts.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-448.awsdns-56.com.",
        "ns-1913.awsdns-47.co.uk.",
        "ns-658.awsdns-18.net.",
        "ns-1392.awsdns-46.org."
      ]
    },
    {
      name = "www.courts.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    }
  ]
}

moved {
  from = module.courts_gov_uk.aws_route53_record.default
  to   = module.courts_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.courts_gov_uk.aws_route53_zone.default
  to   = module.courts_gov_uk_zone.aws_route53_zone.this
}
