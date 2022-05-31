module "appeals_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "appeals-service.gov.uk"
  description = "Tribunals decisions database"
  tags = {
    component = "None"
  }
}

module "appeals_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.appeals_service_gov_uk_zone.zone_id

  records = [
    {
      name = "appeals-service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "appeals-service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-806.awsdns-36.net.",        
        "ns-1039.awsdns-01.org.",
        "ns-1728.awsdns-24.co.uk.",
        "ns-470.awsdns-58.com."         
      ]
    },
    {
      name = "www.appeals-service.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.appeals_service_gov_uk_zone.zone_id
        name                   = "appeals-service.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.appeals_service_gov_uk.aws_route53_record.default
  to   = module.appeals_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.appeals_service_gov_uk.aws_route53_zone.default
  to   = module.appeals_service_gov_uk_zone.aws_route53_zone.this
}
