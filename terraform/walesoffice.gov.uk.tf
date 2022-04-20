module "walesoffice_gov_uk" {
  source = "./modules/route53"

  domain      = "walesoffice.gov.uk"
  description = ""

  records = [
    {
      name = "walesoffice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "151.101.2.30",
        "151.101.66.30",
        "151.101.130.30",
        "151.101.194.30"
      ]
    },
    {
      name = "walesoffice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1907.awsdns-46.co.uk.",
        "ns-1076.awsdns-06.org.",
        "ns-998.awsdns-60.net.",
        "ns-386.awsdns-48.com."
      ]
    },
    {
      name = "www.walesoffice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "151.101.2.30",
        "151.101.66.30",
        "151.101.130.30",
        "151.101.194.30"
      ]
    }
  ]
}