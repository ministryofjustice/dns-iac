module "criminal_justice_system_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "criminal-justice-system.gov.uk"
  tags = {
    component = "None"
  }
}

module "criminal_justice_system_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.criminal_justice_system_gov_uk_zone.zone_id

  records = [
    {
      name = "criminal-justice-system.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "criminal-justice-system.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1744.awsdns-26.co.uk.",
        "ns-879.awsdns-45.net.",
        "ns-1499.awsdns-59.org.",
        "ns-461.awsdns-57.com."
      ]
    },
    {
      name = "www.criminal-justice-system.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    }
  ]
}

moved {
  from = module.criminal_justice_system_gov_uk.aws_route53_record.default
  to   = module.criminal_justice_system_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.criminal_justice_system_gov_uk.aws_route53_zone.default
  to   = module.criminal_justice_system_gov_uk_zone.aws_route53_zone.this
}
