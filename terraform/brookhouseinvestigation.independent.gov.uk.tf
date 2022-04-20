module "brookhouseinvestigation_independent_gov_uk" {
  source = "./modules/route53"

  domain      = "brookhouseinvestigation.independent.gov.uk"
  description = "Brook house investigation"

  records = [
    {
      name = "brookhouseinvestigation.independent.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-360.awsdns-45.com.",
        "ns-538.awsdns-03.net.",
        "ns-1361.awsdns-42.org.",
        "ns-1704.awsdns-21.co.uk."
      ]
    }
  ]
}
