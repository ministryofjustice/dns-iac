module "carestandardstribunal_gov_uk" {
  source = "./modules/route53"

  domain      = "carestandardstribunal.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "carestandardstribunal.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "carestandardstribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-94.awsdns-11.com.",
        "ns-1866.awsdns-41.co.uk.",
        "ns-1370.awsdns-43.org.",
        "ns-987.awsdns-59.net."
      ]
    },
    {
      name = "www.carestandardstribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "carestandardstribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
