module "callmeback_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "callmeback.justice.gov.uk"
  description = ""

  records = [
    {
      name = "callmeback.justice.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-1847.awsdns-38.co.uk.",
        "ns-600.awsdns-11.net.",
        "ns-309.awsdns-38.com.",
        "ns-1523.awsdns-62.org."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
