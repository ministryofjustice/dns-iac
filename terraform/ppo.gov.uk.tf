module "ppo_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "ppo.gov.uk"
  description = "ALB"

  tags = {
    component = "None"
  }
}

module "ppo_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.ppo_gov_uk_zone.zone_id

  records = [
    {
      name = "ppo.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-2.id
        name                   = "dualstack.ppo-p-loadb-1dvbse409la2x-1010225236.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "ppo.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 ppo-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "ppo.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-530.awsdns-02.net.",
        "ns-1695.awsdns-19.co.uk.",
        "ns-1286.awsdns-32.org.",
        "ns-408.awsdns-51.com."
      ]
    },
    {
      name = "ppo.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby",
        "MS=ms15192188",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com include:servers.mcsv.net -all"
      ]
    },
    {
      name = "_253863dcd7c6082e4f0d800941a4e4bb.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_d04ba8ce18e13c0cdea659d1362a86dd.jhztdrwbnw.acm-validations.aws."
      ]
    },
    {
      name = "_dmarc.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.ppo.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "k1._domainkey.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "dkim.mcsv.net"
      ]
    },
    {
      name = "s1._domainkey.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s1.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s2.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "selector1._domainkey.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-ppo-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-ppo-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.ppo.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "fba0295f0f"
      ]
    },
    {
      name = "_sipfederationtls._tcp.ppo.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.ppo.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.ppo.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "em4962.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "enterpriseenrollment.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "msoid.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "sip.ppo.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "www.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ppo.gov.uk"
      ]
    },
    {
      name = "_022696f67f214f732b546ed506caf325.www.ppo.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_a957df26df1020044886408df9f2ee24.jhztdrwbnw.acm-validations.aws."
      ]
    }
  ]
}

moved {
  from = module.ppo_gov_uk.aws_route53_record.default
  to   = module.ppo_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.ppo_gov_uk.aws_route53_zone.default
  to   = module.ppo_gov_uk_zone.aws_route53_zone.this
}
