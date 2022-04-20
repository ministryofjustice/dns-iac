module "immigrationservicestribunal_gov_uk" {
  source = "./modules/route53"

  domain      = "immigrationservicestribunal.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "immigrationservicestribunal.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "immigrationservicestribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-340.awsdns-42.com.",
        "ns-881.awsdns-46.net.",
        "ns-1416.awsdns-49.org.",
        "ns-1542.awsdns-00.co.uk."
      ]
    },
    {
      name = "www.immigrationservicestribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "immigrationservicestribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
