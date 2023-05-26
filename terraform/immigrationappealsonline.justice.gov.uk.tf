module "immigrationappealsonline_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "immigrationappealsonline.justice.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "immigrationappealsonline_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.immigrationappealsonline_justice_gov_uk_zone.zone_id


  records = [
    {
      name = "immigrationappealsonline.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "iacfees-prod-alb-waf-1928234551.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "immigrationappealsonline.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1040.awsdns-02.org.",
        "ns-1990.awsdns-56.co.uk.",
        "ns-345.awsdns-43.com.",
        "ns-682.awsdns-21.net.",
      ]
    },
    {
      name = "_bbde749af95f9db428c5643e2a4bb710.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_aeb80b3f8f3963e3506d87496778dd1f.dlgthlwgnp.acm-validations.aws."
      ]
    },
    {
      name = "dev.immigrationappealsonline.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "iacfees-dev-alb-waf-1786482241.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "staging.immigrationappealsonline.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "iacfees-staging-alb-waf-311912251.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "www.immigrationappealsonline.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "iacfees-prod-alb-waf-1928234551.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.immigrationappealsonline_justice_gov_uk.aws_route53_record.default
  to   = module.immigrationappealsonline_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.immigrationappealsonline_justice_gov_uk.aws_route53_zone.default
  to   = module.immigrationappealsonline_justice_gov_uk_zone.aws_route53_zone.this
}
