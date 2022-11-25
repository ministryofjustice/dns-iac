module "hmprisonservice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "hmprisonservice.gov.uk"
  tags = {
    component = "None"
  }
}

module "hmprisonservice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.hmprisonservice_gov_uk_zone.zone_id

  records = [
    {
      name = "hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "hmprisonservice.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "10 mailserv0.instant-web.co.uk.",
        "20 mailserv2.instant-web.co.uk.",
        "20 mailserv3.instant-web.co.uk."
      ]
    },
    {
      name = "hmprisonservice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1479.awsdns-56.org.",
        "ns-1588.awsdns-06.co.uk.",
        "ns-440.awsdns-55.com.",
        "ns-764.awsdns-31.net."
      ]
    },
    {
      name = "_dmarc.hmprisonservice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_smtp._tls.hmprisonservice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "cms.hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "extranet.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.41.108"
      ]
    },
    {
      name = "gw1-extranet.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.41.110"
      ]
    },
    {
      name = "gw1-portal.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.41.126"
      ]
    },
    {
      name = "gw2-extranet.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.41.109"
      ]
    },
    {
      name = "gw2-portal.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.41.125"
      ]
    },
    {
      name = "gw3-portal.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.41.123"
      ]
    },
    {
      name = "jobs.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "62.25.103.101"
      ]
    },
    {
      name = "officertest.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "193.30.111.132"
      ]
    },
    {
      name = "portal.hmprisonservice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.41.124"
      ]
    },
    {
      name = "procurement.hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "staging.procurement.hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "psi.hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "pso.hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "search.hmprisonservice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "search.hmprisonservice.gov.uk.openobjects.com."
      ]
    },
    {
      name = "staging.hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "web-smtp.hmprisonservice.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "www.hmprisonservice.gov.uk."
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
  from = module.hmprisonservice_gov_uk.aws_route53_record.default
  to   = module.hmprisonservice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.hmprisonservice_gov_uk.aws_route53_zone.default
  to   = module.hmprisonservice_gov_uk_zone.aws_route53_zone.this
}
