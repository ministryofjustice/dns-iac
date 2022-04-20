module "landstribunal_gov_uk" {
  source = "./modules/route53"

  domain      = "landstribunal.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "landstribunal.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
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
        zone_id                = "self"
        name                   = "landstribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
