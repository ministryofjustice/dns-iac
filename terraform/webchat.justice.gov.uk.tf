module "webchat_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "webchat.justice.gov.uk"
  description = ""

  records = [
    {
      name = "webchat.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "webchat.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-787.awsdns-34.net.",
        "ns-1741.awsdns-25.co.uk.",
        "ns-25.awsdns-03.com.",
        "ns-1467.awsdns-55.org."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
