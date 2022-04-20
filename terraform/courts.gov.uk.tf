module "courts_gov_uk" {
  source = "./modules/route53"

  domain      = "courts.gov.uk"
  description = ""

  records = [
    {
      name = "courts.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "courts.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-448.awsdns-56.com.",
        "ns-1913.awsdns-47.co.uk.",
        "ns-658.awsdns-18.net.",
        "ns-1392.awsdns-46.org."
      ]
    },
    {
      name = "www.courts.gov.uk."
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
