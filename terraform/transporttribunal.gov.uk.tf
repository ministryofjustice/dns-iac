module "transporttribunal_gov_uk" {
  source = "./modules/route53"

  domain      = "transporttribunal.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "transporttribunal.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
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
        zone_id                = "self"
        name                   = "transporttribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
