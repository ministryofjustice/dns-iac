module "courtfines_direct_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "courtfines.direct.gov.uk"
  tags = {
    component = "None"
  }
}

module "courtfines_direct_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.courtfines_direct_gov_uk_zone.zone_id

  records = [
    {
      name = "courtfines.direct.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.court-loadb-8mcola2l2by0-173012739.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "courtfines.direct.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-328.awsdns-41.com.",
        "ns-1333.awsdns-38.org.",
        "ns-1824.awsdns-36.co.uk.",
        "ns-748.awsdns-29.net."
      ]
    },
    {
      name = "_975286e3bc1ca6804128ccd7c48c89ac.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_308970e3209ac38b43bc563e49f2ccfc.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "_fd42bbf0088b6b64004ae5ea5bb52833.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_7ac7c4084a84f98a030c53171ecd735d.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "staging.courtfines.direct.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "court-LoadB-QPAHTENF925I-482204730.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "_b7870a480aa172a41a554c82cac0d0a9.staging.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_894e585fb8e3be7ea920b3ab9d720382.dqxlbvzbzt.acm-validations.aws."
      ]
    },
    {
      name = "dev.courtfines.direct.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "court-LoadB-118VI6SLEQ8II-1970392396.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
  ]
}

moved {
  from = module.courtfines_direct_gov_uk.aws_route53_record.default
  to   = module.courtfines_direct_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.courtfines_direct_gov_uk.aws_route53_zone.default
  to   = module.courtfines_direct_gov_uk_zone.aws_route53_zone.this
}
