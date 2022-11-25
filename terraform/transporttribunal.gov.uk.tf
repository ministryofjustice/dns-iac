module "transporttribunal_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "transporttribunal.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    component = "None"
  }
}

module "transporttribunal_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.transporttribunal_gov_uk_zone.zone_id

  records = [
    {
      name = "transporttribunal.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "transporttribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1512.awsdns-61.org.",
        "ns-540.awsdns-03.net.",
        "ns-104.awsdns-13.com.",
        "ns-1569.awsdns-04.co.uk."
      ]
    },
    {
      name = "www.transporttribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.transporttribunal_gov_uk_zone.zone_id
        name                   = "transporttribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.transporttribunal_gov_uk.aws_route53_record.default
  to   = module.transporttribunal_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.transporttribunal_gov_uk.aws_route53_zone.default
  to   = module.transporttribunal_gov_uk_zone.aws_route53_zone.this
}
