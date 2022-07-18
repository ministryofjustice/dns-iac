module "possessionclaim_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "possessionclaim.gov.uk"
  tags = {
    component = "None"
  }
}

module "possessionclaim_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.possessionclaim_gov_uk_zone.zone_id

  records = [
    {
      name = "possessionclaim.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z3GKZC51ZF0DB4"
        name                   = "s3-website.eu-west-2.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "possessionclaim.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-905.awsdns-49.net.",
        "ns-1832.awsdns-37.co.uk.",
        "ns-205.awsdns-25.com.",
        "ns-1307.awsdns-35.org."
      ]
    },
    {
      name = "_ed60922ca184fbf575a566d49400efd0.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_fb80be93cc626e2e71c64aab5097d5b2.gxwgcdsjsl.acm-validations.aws."
      ]
    },
    {
      name = "afdverify.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.hmcts-live-ext.azurefd.net"
      ]
    },
    {
      name = "www.backend.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.66"
      ]
    },
    {
      name = "www.birmingham.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.69"
      ]
    },
    {
      name = "www.bristol.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.68"
      ]
    },
    {
      name = "www.cardiff.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.67"
      ]
    },
    {
      name = "www.leeds.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.70"
      ]
    },
    {
      name = "www.london1.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.71"
      ]
    },
    {
      name = "www.london2.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.72"
      ]
    },
    {
      name = "www.manchester.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.73"
      ]
    },
    {
      name = "www.testclaim.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.74"
      ]
    },
    {
      name = "www.training01.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.69"
      ]
    },
    {
      name = "www.training02.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.70"
      ]
    },
    {
      name = "www.training03.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.73"
      ]
    },
    {
      name = "www.training04.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.71"
      ]
    },
    {
      name = "www.training05.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.72"
      ]
    },
    {
      name = "www.training06.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.68"
      ]
    },
    {
      name = "www.training07.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.67"
      ]
    },
    {
      name = "www.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-live-ext.azurefd.net"
      ]
    }
  ]
}

moved {
  from = module.possessionclaim_gov_uk.aws_route53_record.default
  to   = module.possessionclaim_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.possessionclaim_gov_uk.aws_route53_zone.default
  to   = module.possessionclaim_gov_uk_zone.aws_route53_zone.this
}
