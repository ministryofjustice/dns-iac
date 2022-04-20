module "dca_gov_uk" {
  source = "./modules/route53"

  domain      = "dca.gov.uk"
  description = ""

  records = [
    {
      name = "dca.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "dca.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1731.awsdns-24.co.uk.",
        "ns-868.awsdns-44.net.",
        "ns-1467.awsdns-55.org.",
        "ns-491.awsdns-61.com."
      ]
    },
    {
      name = "www.dca.gov.uk."
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
