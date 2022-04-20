module "tribunalsservice_gov_uk" {
  source = "./modules/route53"

  domain      = "tribunalsservice.gov.uk"
  description = ""

  records = [
    {
      name = "tribunalsservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "tribunalsservice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1372.awsdns-43.org.",
        "ns-456.awsdns-57.com.",
        "ns-1874.awsdns-42.co.uk.",
        "ns-631.awsdns-14.net."
      ]
    },
    {
      name = "search.tribunalsservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.44.22.84"
      ]
    },
    {
      name = "www.tribunalsservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www2b.tribunalsservice.gov.uk."
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
