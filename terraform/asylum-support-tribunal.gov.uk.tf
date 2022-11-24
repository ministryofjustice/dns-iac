module "asylum_support_tribunal_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "asylum-support-tribunal.gov.uk"
  description = "Tribunals decisions database"
  tags = {
    component = "None"
  }
}

module "asylum_support_tribunal_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.asylum_support_tribunal_gov_uk_zone.zone_id

  records = [
    {
      name = "asylum-support-tribunal.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "asylum-support-tribunal.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-999.awsdns-60.net.",
        "ns-157.awsdns-19.com.",
        "ns-1513.awsdns-61.org.",
        "ns-1574.awsdns-04.co.uk."
      ]
    },
    {
      name = "www.asylum-support-tribunal.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.asylum_support_tribunal_gov_uk_zone.zone_id
        name                   = "asylum-support-tribunal.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.asylum_support_tribunal_gov_uk.aws_route53_record.default
  to   = module.asylum_support_tribunal_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.asylum_support_tribunal_gov_uk.aws_route53_zone.default
  to   = module.asylum_support_tribunal_gov_uk_zone.aws_route53_zone.this
}
