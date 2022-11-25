module "xhibit_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "xhibit.gov.uk"
  tags = {
    component = "None"
  }
}

module "xhibit_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.xhibit_gov_uk_zone.zone_id

  records = [
    {
      name = "xhibit.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "xhibit.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1654.awsdns-14.co.uk.",
        "ns-1016.awsdns-63.net.",
        "ns-42.awsdns-05.com.",
        "ns-1183.awsdns-19.org."
      ]
    },
    {
      name = "www.xhibit.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.xhibit_gov_uk_zone.zone_id
        name                   = "xhibit.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.xhibit_gov_uk.aws_route53_record.default
  to   = module.xhibit_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.xhibit_gov_uk.aws_route53_zone.default
  to   = module.xhibit_gov_uk_zone.aws_route53_zone.this
}
