module "informationtribunal_gov_uk" {
  source = "./modules/route53"

  domain      = "informationtribunal.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "informationtribunal.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "informationtribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1412.awsdns-48.org.",
        "ns-584.awsdns-09.net.",
        "ns-474.awsdns-59.com.",
        "ns-1885.awsdns-43.co.uk."
      ]
    },
    {
      name = "www.informationtribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "informationtribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
