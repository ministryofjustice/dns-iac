module "generalcommissioners_gov_uk" {
  source = "./modules/route53"

  domain      = "generalcommissioners.gov.uk"
  description = ""

  records = [
    {
      name = "generalcommissioners.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "generalcommissioners.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1572.awsdns-04.co.uk.",
        "ns-539.awsdns-03.net.",
        "ns-1360.awsdns-42.org.",
        "ns-260.awsdns-32.com."
      ]
    },
    {
      name = "www.generalcommissioners.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www2b.generalcommissioners.gov.uk."
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
