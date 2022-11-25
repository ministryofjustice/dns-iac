module "pensionsappealtribunals_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "pensionsappealtribunals.gov.uk"
  tags = {
    component = "None"
  }
}

module "pensionsappealtribunals_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.pensionsappealtribunals_gov_uk_zone.zone_id

  records = [
    {
      name = "pensionsappealtribunals.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "pensionsappealtribunals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1240.awsdns-27.org.",
        "ns-293.awsdns-36.com.",
        "ns-1911.awsdns-46.co.uk.",
        "ns-963.awsdns-56.net."
      ]
    },
    {
      name = "www.pensionsappealtribunals.gov.uk."
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
  from = module.pensionsappealtribunals_gov_uk.aws_route53_record.default
  to   = module.pensionsappealtribunals_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.pensionsappealtribunals_gov_uk.aws_route53_zone.default
  to   = module.pensionsappealtribunals_gov_uk_zone.aws_route53_zone.this
}
