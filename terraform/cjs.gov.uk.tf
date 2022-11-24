module "cjs_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "cjs.gov.uk"
  tags = {
    component = "None"
  }
}

module "cjs_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.cjs_gov_uk_zone.zone_id

  records = [
    {
      name = "cjs.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "cjs.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-868.awsdns-44.net.",
        "ns-483.awsdns-60.com.",
        "ns-1680.awsdns-18.co.uk.",
        "ns-1424.awsdns-50.org."
      ]
    },
    {
      name = "www.cjs.gov.uk."
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
  from = module.cjs_gov_uk.aws_route53_record.default
  to   = module.cjs_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.cjs_gov_uk.aws_route53_zone.default
  to   = module.cjs_gov_uk_zone.aws_route53_zone.this
}
