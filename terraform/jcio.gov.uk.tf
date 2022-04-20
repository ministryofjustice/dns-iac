module "jcio_gov_uk" {
  source = "./modules/route53"

  domain      = "jcio.gov.uk"
  description = "Incl. Office 365 DNS records"

  records = [
    {
      name = "jcio.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1269.awsdns-30.org.",
        "ns-734.awsdns-27.net.",
        "ns-1974.awsdns-54.co.uk.",
        "ns-48.awsdns-06.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
