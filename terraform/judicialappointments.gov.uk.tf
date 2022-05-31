module "judicialappointments_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "judicialappointments.gov.uk"
  description = "Incl. Office 365 DNS records"

  tags = {
    component = "None"
  }
}

module "judicialappointments_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.judicialappointments_gov_uk_zone.zone_id

  records = [
    {
      name = "judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "192.0.78.141",
        "192.0.78.225"
      ]
    },
    {
      name = "judicialappointments.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 Judicialappointments-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "judicialappointments.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-798.awsdns-35.net.",
        "ns-1222.awsdns-24.org.",
        "ns-1621.awsdns-10.co.uk.",
        "ns-188.awsdns-23.com."
      ]
    },
    {
      name = "judicialappointments.gov.uk."
      type = "SPF"
      ttl  = 300
      records = [
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms55245335",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "selector1._domainkey.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-Judicialappointments-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-Judicialappointments-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "f19c18b5ab"
      ]
    },
    {
      name = "_sipfederationtls._tcp.judicialappointments.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "_sip._tls.judicialappointments.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "archive.judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "185.40.8.148"
      ]
    },
    {
      name = "www.archive.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "archive.judicialappointments.gov.uk"
      ]
    },
    {
      name = "autodiscover.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "enterpriseenrollment.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "jars.judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "185.40.8.147"
      ]
    },
    {
      name = "_620f03c9e0a8ca3bf354272ffb9693e9.jars.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "9744EE47245BB3D76F6EC5710FF7B577.AB4A31E19AD27B00BB5CA782CE4C2FF1.5b60ca121d83d7d.comodoca.com"
      ]
    },
    {
      name = "lyncdiscover.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "msoid.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "sip.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "www.judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "192.0.78.141",
        "192.0.78.225"
      ]
    }
  ]
}

moved {
  from = module.judicialappointments_gov_uk.aws_route53_record.default
  to   = module.judicialappointments_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.judicialappointments_gov_uk.aws_route53_zone.default
  to   = module.judicialappointments_gov_uk_zone.aws_route53_zone.this
}
