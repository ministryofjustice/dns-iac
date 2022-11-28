module "magistrates_org_uk_zone" {
  source = "./modules/route53/zone"

  name = "magistrates.org.uk"
  tags = {
    component = "None"
  }
}

module "magistrates_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.magistrates_org_uk_zone.zone_id

  records = [
    {
      name = "magistrates.org.uk"
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "magistrates.org.uk"
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1347.awsdns-40.org.",
        "ns-2010.awsdns-59.co.uk.",
        "ns-313.awsdns-39.com.",
        "ns-935.awsdns-52.net."
      ]
    },
    {
      name = "magistrates.org.uk"
      type = "SOA"
      ttl  = 900
      records = [
        "ns-935.awsdns-52.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "magistrates.org.uk"
      type = "MX"
      ttl  = 120
      records = [
        "10 cluster2.gsi.messagelabs.com.",
        "20 cluster2a.gsi.messagelabs.com."
      ]
    },
    {
      name = "mo.admin.magistrates.org.uk"
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.178"
      ]
    },
    {
      name = "mo.rota.magistrates.org.uk"
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.178"
      ]
    },
    {
      name = "www.magistrates.org.uk"
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
  ]
}

