module "yjbpublications_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "yjbpublications.justice.gov.uk"
  description = ""

  records = [
    {
      name = "yjbpublications.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "yjbpublications.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1481.awsdns-57.org.",
        "ns-536.awsdns-03.net.",
        "ns-1881.awsdns-43.co.uk.",
        "ns-247.awsdns-30.com."
      ]
    },
    {
      name = "www.yjbpublications.justice.gov.uk."
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
