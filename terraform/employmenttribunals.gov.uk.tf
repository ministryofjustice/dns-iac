module "employmenttribunals_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "employmenttribunals.gov.uk"
  tags = {
    application            = "Employment Tribunal/ET Application for Applying To an Employment Tribunal/ATET "
    business-unit          = "HMCTS"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
    component              = "None"
  }
}

module "employmenttribunals_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.employmenttribunals_gov_uk_zone.zone_id

  records = [
    {
      name = "employmenttribunals.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "employmenttribunals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1276.awsdns-31.org.",
        "ns-592.awsdns-10.net.",
        "ns-1890.awsdns-44.co.uk.",
        "ns-99.awsdns-12.com."
      ]
    }
  ]
}

moved {
  from = module.employmenttribunals_gov_uk.aws_route53_record.default
  to   = module.employmenttribunals_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.employmenttribunals_gov_uk.aws_route53_zone.default
  to   = module.employmenttribunals_gov_uk_zone.aws_route53_zone.this
}
