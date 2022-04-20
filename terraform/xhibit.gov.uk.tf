module "xhibit_gov_uk" {
  source = "./modules/route53"

  domain      = "xhibit.gov.uk"
  description = ""

  records = [
    {
      name = "xhibit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "xhibit.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1654.awsdns-14.co.uk.",
        "ns-1016.awsdns-63.net.",
        "ns-42.awsdns-05.com.",
        "ns-1183.awsdns-19.org."
      ]
    },
    {
      name = "www.xhibit.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "xhibit.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
