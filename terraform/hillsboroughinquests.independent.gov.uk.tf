module "hillsboroughinquests_independent_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "hillsboroughinquests.independent.gov.uk"
  tags = {
    component = "None"
  }
}

module "hillsboroughinquests_independent_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.hillsboroughinquests_independent_gov_uk_zone.zone_id

  records = [
    {
      name = "hillsboroughinquests.independent.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "hillsboroughinquests.independent.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1727.awsdns-23.co.uk.",
        "ns-519.awsdns-00.net.",
        "ns-1433.awsdns-51.org.",
        "ns-367.awsdns-45.com."
      ]
    },
    {
      name = "_dbba0a299a5085e687f708e302c2089c.hillsboroughinquests.independent.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_33cbffaf7c36140f8922e4f00027dc0c.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "www.hillsboroughinquests.independent.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "_404c4a61de1b9aed45c6e59cd837dc04.www.hillsboroughinquests.independent.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_2762b8e44eeffa9ca012abc881f5d403.hkvuiqjoua.acm-validations.aws."
      ]
    }
  ]
}

moved {
  from = module.hillsboroughinquests_independent_gov_uk.aws_route53_record.default
  to   = module.hillsboroughinquests_independent_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.hillsboroughinquests_independent_gov_uk.aws_route53_zone.default
  to   = module.hillsboroughinquests_independent_gov_uk_zone.aws_route53_zone.this
}
