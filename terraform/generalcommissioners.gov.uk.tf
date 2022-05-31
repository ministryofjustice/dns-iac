module "generalcommissioners_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "generalcommissioners.gov.uk"
  tags = {
    component = "None"
  }
}

module "generalcommissioners_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.generalcommissioners_gov_uk_zone.zone_id

  records = [
    {
      name = "generalcommissioners.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "generalcommissioners.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1572.awsdns-04.co.uk.",
        "ns-539.awsdns-03.net.",
        "ns-1360.awsdns-42.org.",
        "ns-260.awsdns-32.com."
      ]
    },
    {
      name = "www.generalcommissioners.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www2b.generalcommissioners.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    }
  ]
}

moved {
  from = module.generalcommissioners_gov_uk.aws_route53_record.default
  to   = module.generalcommissioners_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.generalcommissioners_gov_uk.aws_route53_zone.default
  to   = module.generalcommissioners_gov_uk_zone.aws_route53_zone.this
}
