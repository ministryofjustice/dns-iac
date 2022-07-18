module "civilclaims_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "civilclaims.service.gov.uk"
  tags = {
    application            = "Accelerated Possession/AP aka Accelerated Claims aka Civil Claims"
    business-unit          = "HMCTS"
    component              = "None"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
  }
}

module "civilclaims_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.civilclaims_service_gov_uk_zone.zone_id

  records = [
    {
      name = "civilclaims.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d3l8w53in45q6n.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "civilclaims.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1049.awsdns-03.org",
        "ns-399.awsdns-49.com",
        "ns-723.awsdns-26.net",
        "ns-1876.awsdns-42.co.uk"
      ]
    },
    {
      name = "_b4efa533ba7d2892b38cdf1567df14bd.civilclaims.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_4b13a88d80593ea6ee818654d10bfcbd.acm-validations.aws."
      ]
    },
    {
      name = "_dmarc.civilclaims.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
    {
      name = "holding.civilclaims.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "54.93.32.35"
      ]
    },
    {
      name = "www.civilclaims.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d3l8w53in45q6n.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "_1e1422989a7c065d554ce38c6cc72a60.www.civilclaims.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_b8d483534166f88e7dcc9a2b70971f9e.acm-validations.aws."
      ]
    }
  ]
}

moved {
  from = module.civilclaims_service_gov_uk.aws_route53_record.default
  to   = module.civilclaims_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.civilclaims_service_gov_uk.aws_route53_zone.default
  to   = module.civilclaims_service_gov_uk_zone.aws_route53_zone.this
}
