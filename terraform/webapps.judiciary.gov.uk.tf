module "webapps_judiciary_gov_uk" {
  source = "./modules/route53"

  domain      = "webapps.judiciary.gov.uk"
  description = "Tactical Products"

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

  tags = {
    component = "None"
  }
}
