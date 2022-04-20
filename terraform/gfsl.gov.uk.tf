module "gfsl_gov_uk" {
  source = "./modules/route53"

  domain      = "gfsl.gov.uk"
  description = ""

  records = [
    {
      name = "gfsl.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1568.awsdns-04.co.uk.",
        "ns-787.awsdns-34.net.",
        "ns-54.awsdns-06.com.",
        "ns-1314.awsdns-36.org."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
