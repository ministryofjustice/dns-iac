module "courtfunds_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "courtfunds.gov.uk"
  tags = {
    component = "None"
  }
}

module "courtfunds_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.courtfunds_gov_uk_zone.zone_id

  records = [
    {
      name = "courtfunds.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "courtfunds.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1638.awsdns-12.co.uk.",
        "ns-688.awsdns-22.net.",
        "ns-1357.awsdns-41.org.",
        "ns-180.awsdns-22.com."
      ]
    },
    {
      name = "ubi.courtfunds.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-395.awsdns-49.com.",
        "ns-546.awsdns-04.net.",
        "ns-1326.awsdns-37.org.",
        "ns-1680.awsdns-18.co.uk."
      ]
    },
    {
      name = "www.courtfunds.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    }
  ]
}

moved {
  from = module.courtfunds_gov_uk.aws_route53_record.default
  to   = module.courtfunds_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.courtfunds_gov_uk.aws_route53_zone.default
  to   = module.courtfunds_gov_uk_zone.aws_route53_zone.this
}
