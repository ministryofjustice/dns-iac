module "exchange_gov_uk" {
  source = "./modules/route53"

  domain      = "exchange.gov.uk"
  description = ""

  records = [
    {
      name = "exchange.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.72"
      ]
    },
    {
      name = "exchange.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-782.awsdns-33.net.",
        "ns-1637.awsdns-12.co.uk.",
        "ns-1308.awsdns-35.org.",
        "ns-134.awsdns-16.com."
      ]
    },
    {
      name = "www.exchange.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.72"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
