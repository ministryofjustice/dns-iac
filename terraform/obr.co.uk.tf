module "obr_co_uk_zone" {
  source = "./modules/route53/zone"

  name = "obr.co.uk"
  tags = {
    component = "None"
  }
}

module "obr_co_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.obr_co_uk_zone.zone_id

  records = [
    {
      name = "obr.co.uk"
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "obr.co.uk"
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1337.awsdns-39.org.",
        "ns-935.awsdns-52.net.",
        "ns-155.awsdns-19.com.",
        "ns-1842.awsdns-38.co.uk."
      ]
    },
    {
      name = "obr.co.uk"
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1337.awsdns-39.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "www.obr.co.uk"
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
  ]
}