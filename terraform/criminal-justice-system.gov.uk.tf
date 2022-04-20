module "criminal_justice_system_gov_uk" {
  source = "./modules/route53"

  domain      = "criminal-justice-system.gov.uk"
  description = ""

  records = [
    {
      name = "criminal-justice-system.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "criminal-justice-system.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1744.awsdns-26.co.uk.",
        "ns-879.awsdns-45.net.",
        "ns-1499.awsdns-59.org.",
        "ns-461.awsdns-57.com."
      ]
    },
    {
      name = "www.criminal-justice-system.gov.uk."
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
