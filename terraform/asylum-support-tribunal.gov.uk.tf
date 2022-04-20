module "asylum_support_tribunal_gov_uk" {
  source = "./modules/route53"

  domain      = "asylum-support-tribunal.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "asylum-support-tribunal.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "asylum-support-tribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-999.awsdns-60.net.",
        "ns-157.awsdns-19.com.",
        "ns-1513.awsdns-61.org.",
        "ns-1574.awsdns-04.co.uk."
      ]
    },
    {
      name = "www.asylum-support-tribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "asylum-support-tribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
