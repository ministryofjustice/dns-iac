module "certificatedbailiffs_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "certificatedbailiffs.justice.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "certificatedbailiffs_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.certificatedbailiffs_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "certificatedbailiffs.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1656.awsdns-15.co.uk.",
        "ns-1430.awsdns-50.org.",
        "ns-902.awsdns-48.net.",
        "ns-387.awsdns-48.com."
      ]
    },
    {
      name = "certificatedbailiffs.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "certi-LoadB-Q2S48NUAQSC6-1478330638.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_5cf8079a9b824596abdbbcb00d30073c.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_121059a8dce2ffbcf7aee539544f7f7e.htgdxnmnnj.acm-validations.aws."
      ]
    },
    {
      name = "staging.certificatedbailiffs.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "certi-LoadB-VZUJS6ULBUUT-415542592.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_9d8fb4b9a0336d614b0ba94cc35c2915.staging.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_2b76f988a4fb7c3820bc2c1f4da3603f.htgdxnmnnj.acm-validations.aws."
      ]
    },
    {
      name = "dev.certificatedbailiffs.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "certi-LoadB-A49BSYDPGEB7-1204811385.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_fda38dc8340bfbcb14b65926fa4142b5.dev.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_452b72db228942abc818513e8cac8e4f.htgdxnmnnj.acm-validations.aws."
      ]
    }
  ]
}

moved {
  from = module.certificatedbailiffs_justice_gov_uk.aws_route53_record.default
  to   = module.certificatedbailiffs_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.certificatedbailiffs_justice_gov_uk.aws_route53_zone.default
  to   = module.certificatedbailiffs_justice_gov_uk_zone.aws_route53_zone.this
}
