module "ahmlr_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "ahmlr.gov.uk"
  description = "Tribunals decisions database"
  tags = {
    component = "None"
  }
}

module "ahmlr_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.ahmlr_gov_uk_zone.zone_id

  records = [
    {
      name = "ahmlr.gov.uk."
      type = "A"
      ttl  = 300

      records = [
        "52.30.196.9",
      ]
    },
    {
      name = "ahmlr.gov.uk."
      type = "NS"
      ttl  = 172800

      records = [
        "ns-1044.awsdns-02.org.",
        "ns-632.awsdns-15.net.",
        "ns-127.awsdns-15.com.",
        "ns-1724.awsdns-23.co.uk.",
      ]
    },
    {
      name = "www.ahmlr.gov.uk."
      type = "A"

      alias = {
        zone_id                = module.ahmlr_gov_uk_zone.zone_id
        name                   = "ahmlr.gov.uk."
        evaluate_target_health = false
      }
    },
  ]
}

moved {
  from = module.ahmlr_gov_uk.aws_route53_record.default
  to   = module.ahmlr_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.ahmlr_gov_uk.aws_route53_zone.default
  to   = module.ahmlr_gov_uk_zone.aws_route53_zone.this
}
