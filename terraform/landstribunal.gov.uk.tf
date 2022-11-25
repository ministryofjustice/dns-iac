module "landstribunal_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "landstribunal.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    component = "None"
  }
}

module "landstribunal_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.landstribunal_gov_uk_zone.zone_id

  records = [
    {
      name = "landstribunal.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "landstribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-928.awsdns-52.net.",
        "ns-1664.awsdns-16.co.uk.",
        "ns-1172.awsdns-18.org.",
        "ns-151.awsdns-18.com."
      ]
    },
    {
      name = "www.landstribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.landstribunal_gov_uk_zone.zone_id
        name                   = "landstribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.landstribunal_gov_uk.aws_route53_record.default
  to   = module.landstribunal_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.landstribunal_gov_uk.aws_route53_zone.default
  to   = module.landstribunal_gov_uk_zone.aws_route53_zone.this
}
