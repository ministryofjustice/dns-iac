module "c100_application_staging_service_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "c100-application-staging.service.justice.gov.uk"
  description = ""

  records = [
    {
      name = "c100-application-staging.service.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1071.awsdns-05.org.",
        "ns-1709.awsdns-21.co.uk.",
        "ns-602.awsdns-11.net.",
        "ns-83.awsdns-10.com."
      ]
    }
  ]
}
