module "webapps_judiciary_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "webapps.judiciary.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "webapps_judiciary_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.webapps_judiciary_gov_uk_zone.zone_id

  records = [
    {
      name = "webapps.judiciary.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.51.47.18",
        "52.208.47.36"
      ]
    },
    {
      name = "webapps.judiciary.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1428.awsdns-50.org.",
        "ns-92.awsdns-11.com.",
        "ns-1586.awsdns-06.co.uk.",
        "ns-653.awsdns-17.net."
      ]
    },
    {
      name = "bc3b5b5307c9219b7467a33ce18706a2.webapps.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "49495F3E6B0DF23D461129F7448BF6B0986C199C.comodoca.com"
      ]
    }
  ]
}

moved {
  from = module.webapps_judiciary_gov_uk.aws_route53_record.default
  to   = module.webapps_judiciary_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.webapps_judiciary_gov_uk.aws_route53_zone.default
  to   = module.webapps_judiciary_gov_uk_zone.aws_route53_zone.this
}
