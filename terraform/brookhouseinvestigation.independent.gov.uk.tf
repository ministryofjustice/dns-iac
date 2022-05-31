module "brookhouseinvestigation_independent_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "brookhouseinvestigation.independent.gov.uk"
  description = "Brook house investigation"
  tags        = {}
}

module "brookhouseinvestigation_independent_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.brookhouseinvestigation_independent_gov_uk_zone.zone_id

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

moved {
  from = module.brookhouseinvestigation_independent_gov_uk.aws_route53_record.default
  to   = module.brookhouseinvestigation_independent_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.brookhouseinvestigation_independent_gov_uk.aws_route53_zone.default       
  to   = module.brookhouseinvestigation_independent_gov_uk_zone.aws_route53_zone.this
}
