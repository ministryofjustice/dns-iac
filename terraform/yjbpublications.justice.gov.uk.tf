module "yjbpublications_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "yjbpublications.justice.gov.uk"
  tags = merge(local.yjb_tags, {
    is-production = true
    application   = "Youth Justice Board Publications: Redirect to GOV.UK"
  })
}

module "yjbpublications_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.yjbpublications_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "yjbpublications.justice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "yjbpublications.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1481.awsdns-57.org.",
        "ns-536.awsdns-03.net.",
        "ns-1881.awsdns-43.co.uk.",
        "ns-247.awsdns-30.com."
      ]
    },
    {
      name = "www.yjbpublications.justice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.yjbpublications_justice_gov_uk.aws_route53_record.default
  to   = module.yjbpublications_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.yjbpublications_justice_gov_uk.aws_route53_zone.default
  to   = module.yjbpublications_justice_gov_uk_zone.aws_route53_zone.this
}
