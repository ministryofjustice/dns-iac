module "c100_application_staging_service_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "c100-application-staging.service.justice.gov.uk"
  tags = {}
}

module "c100_application_staging_service_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.c100_application_staging_service_justice_gov_uk_zone.zone_id

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

moved {
  from = module.c100_application_staging_service_justice_gov_uk.aws_route53_record.default
  to   = module.c100_application_staging_service_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.c100_application_staging_service_justice_gov_uk.aws_route53_zone.default
  to   = module.c100_application_staging_service_justice_gov_uk_zone.aws_route53_zone.this
}
