module "casetracker_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "casetracker.justice.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "casetracker_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.casetracker_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "casetracker.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.civil-loadb-qvbu457dp1b-1835055660.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "casetracker.justice.gov.uk."
      type = "NS"
      ttl  = 14400
      records = [
        "ns-1289.awsdns-33.org.",
        "ns-20.awsdns-02.com.",
        "ns-756.awsdns-30.net.",
        "ns-2020.awsdns-60.co.uk."
      ]
    },
    {
      name = "dev.casetracker.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "civil-loadb-y5o7jqurq76d-2065714619.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "staging.casetracker.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.civil-loadb-105un4gbv5077-2040046462.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.casetracker_justice_gov_uk.aws_route53_record.default
  to   = module.casetracker_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.casetracker_justice_gov_uk.aws_route53_zone.default
  to   = module.casetracker_justice_gov_uk_zone.aws_route53_zone.this
}
