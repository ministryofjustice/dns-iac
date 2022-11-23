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
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
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
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
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
