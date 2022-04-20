module "dugganinquest_independent_gov_uk" {
  source = "./modules/route53"

  domain      = "dugganinquest.independent.gov.uk"
  description = ""

  records = [
    {
      name = "dugganinquest.independent.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "dugganinquest.independent.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-298.awsdns-37.com.",
        "ns-2046.awsdns-63.co.uk.",
        "ns-1180.awsdns-19.org.",
        "ns-645.awsdns-16.net."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
