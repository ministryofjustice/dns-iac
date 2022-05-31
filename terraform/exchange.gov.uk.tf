module "exchange_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "exchange.gov.uk"
  tags = {
    component = "None"
  }
}

module "exchange_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.exchange_gov_uk_zone.zone_id

  records = [
    {
      name = "exchange.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.72"
      ]
    },
    {
      name = "exchange.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-782.awsdns-33.net.",
        "ns-1637.awsdns-12.co.uk.",
        "ns-1308.awsdns-35.org.",
        "ns-134.awsdns-16.com."
      ]
    },
    {
      name = "www.exchange.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.72"
      ]
    }
  ]
}

moved {
  from = module.exchange_gov_uk.aws_route53_record.default
  to   = module.exchange_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.exchange_gov_uk.aws_route53_zone.default
  to   = module.exchange_gov_uk_zone.aws_route53_zone.this
}
