module "civilappeals_gov_uk" {
  source = "./modules/route53"

  domain      = "civilappeals.gov.uk"
  description = ""

  records = [
    {
      name = "civilappeals.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "civilappeals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1139.awsdns-14.org.",
        "ns-365.awsdns-45.com.",
        "ns-1601.awsdns-08.co.uk.",
        "ns-684.awsdns-21.net."
      ]
    },
    {
      name = "www.civilappeals.gov.uk."
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
