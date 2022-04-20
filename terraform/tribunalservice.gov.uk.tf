module "tribunalservice_gov_uk" {
  source = "./modules/route53"

  domain      = "tribunalservice.gov.uk"
  description = ""

  records = [
    {
      name = "tribunalservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "tribunalservice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-348.awsdns-43.com.",
        "ns-991.awsdns-59.net.",
        "ns-2014.awsdns-59.co.uk.",
        "ns-1260.awsdns-29.org."
      ]
    },
    {
      name = "search.tribunalservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.44.22.84"
      ]
    },
    {
      name = "www.tribunalservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www2b.tribunalservice.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
