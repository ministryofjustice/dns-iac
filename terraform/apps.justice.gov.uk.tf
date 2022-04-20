module "apps_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "apps.justice.gov.uk"
  description = ""

  records = [
    {
      name = "apps.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1667.awsdns-16.co.uk.",
        "ns-270.awsdns-33.com.",
        "ns-719.awsdns-25.net.",
        "ns-1233.awsdns-26.org."
      ]
    },
    {
      name = "libra-print.apps.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.247.3.129",
        "51.247.4.129"
      ]
    },
    {
      name = "_d52142d3008487496762778a1cfa0fdb.libra-prod.apps.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "F9F9AE573ECD86554D7687AB7C10C472.88BAE9CFF1FE5002B2B4579D5C4784C2.1bf50aaf147b3b0ddd26.comodoca.com."
      ]
    },
    {
      name = "libra-test.apps.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "51.247.3.130",
        "51.247.4.130"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
