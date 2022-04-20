module "cjs_gov_uk" {
  source = "./modules/route53"

  domain      = "cjs.gov.uk"
  description = ""

  records = [
    {
      name = "cjs.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "cjs.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-868.awsdns-44.net.",
        "ns-483.awsdns-60.com.",
        "ns-1680.awsdns-18.co.uk.",
        "ns-1424.awsdns-50.org."
      ]
    },
    {
      name = "www.cjs.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
