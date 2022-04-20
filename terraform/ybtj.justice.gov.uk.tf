module "ybtj_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "ybtj.justice.gov.uk"
  description = ""

  records = [
    {
      name = "ybtj.justice.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "34.250.68.97"
      ]
    },
    {
      name = "ybtj.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1434.awsdns-51.org.",
        "ns-695.awsdns-22.net.",
        "ns-1894.awsdns-44.co.uk.",
        "ns-126.awsdns-15.com."
      ]
    },
    {
      name = "www.ybtj.justice.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "34.250.68.97"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
