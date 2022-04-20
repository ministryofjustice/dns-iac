module "lscc_org_uk" {
  source = "./modules/route53"

  domain      = "lscc.org.uk"
  description = ""

  records = [
    {
      name = "lscc.org.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "lscc.org.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-928.awsdns-52.net.",
        "ns-1450.awsdns-53.org.",
        "ns-1802.awsdns-33.co.uk.",
        "ns-9.awsdns-01.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
