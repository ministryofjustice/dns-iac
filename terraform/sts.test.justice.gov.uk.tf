module "sts_test_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "sts.test.justice.gov.uk"
  description = ""

  records = [
    {
      name = "sts.test.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "195.59.75.143"
      ]
    },
    {
      name = "sts.test.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1810.awsdns-34.co.uk.",
        "ns-760.awsdns-31.net.",
        "ns-401.awsdns-50.com.",
        "ns-1234.awsdns-26.org."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
