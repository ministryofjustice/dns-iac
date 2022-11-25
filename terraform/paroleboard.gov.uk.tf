module "paroleboard_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "paroleboard.gov.uk"
  tags = {
    component = "None"
  }
}

module "paroleboard_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.paroleboard_gov_uk_zone.zone_id

  records = [
    {
      name = "paroleboard.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "paroleboard.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 paroleboard-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "paroleboard.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-56.awsdns-07.com.",
        "ns-1689.awsdns-19.co.uk.",
        "ns-708.awsdns-24.net.",
        "ns-1480.awsdns-57.org."
      ]
    },
    {
      name = "paroleboard.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "YcrqOH4L",
        "ms=ms20657591",
        "v=spf1 include:spf.protection.outlook.com include:mail.zendesk.com -all"
      ]
    },
    {
      name = "_dmarc.paroleboard.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@paroleboard.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-paroleboard-gov-uk._domainkey.digitalparole.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-paroleboard-gov-uk._domainkey.digitalparole.onmicrosoft.com"
      ]
    },
    {
      name = "_msradc.paroleboard.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "https://rdweb.wvd.microsoft.com/api/arm/feeddiscovery"
      ]
    },
    {
      name = "_sipfederationtls._tcp.paroleboard.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.paroleboard.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.paroleboard.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "avpn.paroleboard.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.149.2.10"
      ]
    },
    {
      name = "enterpriseenrollment.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "msoid.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "remote.paroleboard.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.140.159.248"
      ]
    },
    {
      name = "sip.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "sopvpn.paroleboard.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "20.50.110.11"
      ]
    },
    {
      name = "www.paroleboard.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.paroleboard_gov_uk.aws_route53_record.default
  to   = module.paroleboard_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.paroleboard_gov_uk.aws_route53_zone.default
  to   = module.paroleboard_gov_uk_zone.aws_route53_zone.this
}
