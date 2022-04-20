module "moneyclaim_gov_uk" {
  source = "./modules/route53"

  domain      = "moneyclaim.gov.uk"
  description = ""

  records = [
    {
      name = "moneyclaim.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "moneyclaim.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-801.awsdns-36.net.",
        "ns-1192.awsdns-21.org.",
        "ns-401.awsdns-50.com.",
        "ns-1841.awsdns-38.co.uk."
      ]
    },
    {
      name = "www.moneyclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-live-ext.azurefd.net"
      ]
    }
  ]

  tags = {
    Application   = "moneyclaim.gov.uk"
    business-unit = "HMCTS"
    owner         = "HMCTS"
  }
}
