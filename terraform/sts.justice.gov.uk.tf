module "sts_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "sts.justice.gov.uk"
  description = ""

  records = [
    {
      name = "sts.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "157.203.177.193"
      ]
    },
    {
      name = "sts.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-596.awsdns-10.net.",
        "ns-1372.awsdns-43.org.",
        "ns-1652.awsdns-14.co.uk.",
        "ns-271.awsdns-33.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
