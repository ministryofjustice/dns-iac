module "tribunalsservice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "tribunalsservice.gov.uk"
  tags = {
    component = "None"
  }
}

module "tribunalsservice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.tribunalsservice_gov_uk_zone.zone_id

  records = [
    {
      name = "tribunalsservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "tribunalsservice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1372.awsdns-43.org.",
        "ns-456.awsdns-57.com.",
        "ns-1874.awsdns-42.co.uk.",
        "ns-631.awsdns-14.net."
      ]
    },
    {
      name = "search.tribunalsservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.44.22.84"
      ]
    },
    {
      name = "www.tribunalsservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www2b.tribunalsservice.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    }
  ]
}

moved {
  from = module.tribunalsservice_gov_uk.aws_route53_record.default
  to   = module.tribunalsservice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.tribunalsservice_gov_uk.aws_route53_zone.default
  to   = module.tribunalsservice_gov_uk_zone.aws_route53_zone.this
}
