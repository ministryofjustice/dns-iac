module "employmentappeals_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "employmentappeals.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    application            = "Employment Tribunal/ET Application for Applying To an Employment Tribunal/ATET "
    business-unit          = "HMCTS"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
    component              = "None"
  }
}

module "employmentappeals_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.employmentappeals_gov_uk_zone.zone_id

  records = [
    {
      name = "employmentappeals.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "employmentappeals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1558.awsdns-02.co.uk.",
        "ns-478.awsdns-59.com.",
        "ns-771.awsdns-32.net.",
        "ns-1404.awsdns-47.org."
      ]
    },
    {
      name = "www.employmentappeals.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.employmentappeals_gov_uk_zone.zone_id
        name                   = "employmentappeals.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.employmentappeals_gov_uk.aws_route53_record.default
  to   = module.employmentappeals_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.employmentappeals_gov_uk.aws_route53_zone.default
  to   = module.employmentappeals_gov_uk_zone.aws_route53_zone.this
}
