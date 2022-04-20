module "courtfunds_gov_uk" {
  source = "./modules/route53"

  domain      = "courtfunds.gov.uk"
  description = ""

  records = [
    {
      name = "courtfunds.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "courtfunds.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1638.awsdns-12.co.uk.",
        "ns-688.awsdns-22.net.",
        "ns-1357.awsdns-41.org.",
        "ns-180.awsdns-22.com."
      ]
    },
    {
      name = "ubi.courtfunds.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-395.awsdns-49.com.",
        "ns-546.awsdns-04.net.",
        "ns-1326.awsdns-37.org.",
        "ns-1680.awsdns-18.co.uk."
      ]
    },
    {
      name = "www.courtfunds.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
