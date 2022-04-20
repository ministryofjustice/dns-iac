module "pensionsappealtribunals_gov_uk" {
  source = "./modules/route53"

  domain      = "pensionsappealtribunals.gov.uk"
  description = ""

  records = [
    {
      name = "pensionsappealtribunals.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "pensionsappealtribunals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1240.awsdns-27.org.",
        "ns-293.awsdns-36.com.",
        "ns-1911.awsdns-46.co.uk.",
        "ns-963.awsdns-56.net."
      ]
    },
    {
      name = "www.pensionsappealtribunals.gov.uk."
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
