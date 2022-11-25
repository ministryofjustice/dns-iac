module "cjit_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "cjit.gov.uk"
  tags = {
    component = "None"
  }
}

module "cjit_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.cjit_gov_uk_zone.zone_id

  records = [
    {
      name = "cjit.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "cjit.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 \tcjit-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "cjit.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-816.awsdns-38.net.",
        "ns-391.awsdns-48.com.",
        "ns-1979.awsdns-55.co.uk.",
        "ns-1357.awsdns-41.org."
      ]
    },
    {
      name = "cjit.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms40613853",
        "c4ugBTKaMjH/kPL8f3NBNwU65XxsuAzxiqPPi364nN9+uX+3Y+7wpxs5T45WETWJpNfWzlGZ6eU377mTefweRw==",
        "v=spf1  ip4:37.26.90.115/32 ip4:51.179.211.114/32 ip4:194.176.211.112/32 ip4:194.176.211.104/32 ip4:18.132.8.248/32 ip4:3.9.15.169/32 ip4:18.135.73.34/32 include:spf.protection.outlook.com ~all",
        "google-site-verification=lZoKiIUUlUasDUM1byJLG0qT7AhCJqaLLTVwbqsjfeA"
      ]
    },
    {
      name = "www.3000mph.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "212.140.220.7"
      ]
    },
    {
      name = "_dmarc.cjit.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.cjit.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-cjit-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.cjit.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-cjit-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_smtp._tls.cjit.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "cjse6mail01.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.137.70.97"
      ]
    },
    {
      name = "cjse6mail02.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.137.70.98"
      ]
    },
    {
      name = "cjse6mail03.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.103"
      ]
    },
    {
      name = "cjse6mail04.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.104"
      ]
    },
    {
      name = "cjse7mail01.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.137.70.105"
      ]
    },
    {
      name = "cjse7mail02.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.137.70.106"
      ]
    },
    {
      name = "cjse7mail03.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.111"
      ]
    },
    {
      name = "cjse7mail04.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.112"
      ]
    },
    {
      name = "cjsexp1mail01.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.179.211.114"
      ]
    },
    {
      name = "cmdb.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.97"
      ]
    },
    {
      name = "cjs.dashboard.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.146.137.164"
      ]
    },
    {
      name = "dev-xhibitportalmail.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "18.132.8.248"
      ]
    },
    {
      name = "feedback.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "212.140.220.7"
      ]
    },
    {
      name = "www.legal.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "212.140.220.7"
      ]
    },
    {
      name = "www.openandshut.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "212.140.220.7"
      ]
    },
    {
      name = "td.cjit.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.176.211.98"
      ]
    },
    {
      name = "vipportal.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "212.137.69.25"
      ]
    },
    {
      name = "viptraining.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.146.137.189"
      ]
    },
    {
      name = "www.cjit.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "xhibitportalmail.cjit.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "18.135.73.34"
      ]
    }
  ]
}

moved {
  from = module.cjit_gov_uk.aws_route53_record.default
  to   = module.cjit_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.cjit_gov_uk.aws_route53_zone.default
  to   = module.cjit_gov_uk_zone.aws_route53_zone.this
}
