module "osscsc_gov_uk" {
  source = "./modules/route53"

  domain      = "osscsc.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "osscsc.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "osscsc.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1474.awsdns-56.org.",
        "ns-622.awsdns-13.net.",
        "ns-1981.awsdns-55.co.uk.",
        "ns-470.awsdns-58.com."
      ]
    },
    {
      name = "www.osscsc.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "osscsc.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
