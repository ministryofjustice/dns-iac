module "tribunalservice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "tribunalservice.gov.uk"
  tags = {
    component = "None"
  }
}

module "tribunalservice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.tribunalservice_gov_uk_zone.zone_id

  records = [
    {
      name = "tribunalservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "tribunalservice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-348.awsdns-43.com.",
        "ns-991.awsdns-59.net.",
        "ns-2014.awsdns-59.co.uk.",
        "ns-1260.awsdns-29.org."
      ]
    },
    {
      name = "search.tribunalservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.44.22.84"
      ]
    },
    {
      name = "www.tribunalservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www2b.tribunalservice.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    }
  ]
}

moved {
  from = module.tribunalservice_gov_uk.aws_route53_record.default
  to   = module.tribunalservice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.tribunalservice_gov_uk.aws_route53_zone.default
  to   = module.tribunalservice_gov_uk_zone.aws_route53_zone.this
}
