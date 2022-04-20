module "civilclaims_service_gov_uk" {
  source = "./modules/route53"

  domain      = "civilclaims.service.gov.uk"
  description = ""

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
      name = "f4cc3751333a9dd566ebe63c9a6adda0.civilclaims.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "EC0C38C49995B7CDA03A7ED9B6F9A6BBD4DA5BC9.comodoca.com."
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

  tags = {
    application            = "Accelerated Possession/AP aka Accelerated Claims aka Civil Claims"
    business-unit          = "HMCTS"
    component           = "None"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
  }
}
