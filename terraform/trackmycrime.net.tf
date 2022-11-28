module "trackmycrime_net_zone" {
  source = "./modules/route53/zone"

  name = "trackmycrime.net"
  tags = {
    component = "None"
  }

  description = "Defensive domain for https://trackmycrime.police.uk"
}

module "trackmycrime_net_records" {
  source = "./modules/route53/records"

  zone_id = module.trackmycrime_net_zone.zone_id

  records = [
    {
      name = "trackmycrime.net"
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },

    {
      name = "trackmycrime.net"
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1905.awsdns-46.co.uk.",
        "ns-1301.awsdns-34.org.",
        "ns-847.awsdns-41.net.",
        "ns-342.awsdns-42.com."
      ]
    },
    {
      name = "trackmycrime.net"
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1905.awsdns-46.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "www.trackmycrime.net"
      type = "A"
      alias = {
        zone_id                = module.trackmycrime_net_zone.zone_id
        name                   = "trackmycrime.net."
        evaluate_target_health = false
      }
    },
  ]
}

