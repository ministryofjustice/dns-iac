module "dca_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "dca.gov.uk"
  tags = {
    component = "None"
  }
}

module "dca_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.dca_gov_uk_zone.zone_id

  records = [
    {
      name = "dca.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "dca.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1731.awsdns-24.co.uk.",
        "ns-868.awsdns-44.net.",
        "ns-1467.awsdns-55.org.",
        "ns-491.awsdns-61.com."
      ]
    },
    {
      name = "www.dca.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.dca_gov_uk.aws_route53_record.default
  to   = module.dca_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.dca_gov_uk.aws_route53_zone.default
  to   = module.dca_gov_uk_zone.aws_route53_zone.this
}
