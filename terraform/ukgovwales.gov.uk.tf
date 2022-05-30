module "ukgovwales_gov_uk" {
  source = "./modules/route53"

  domain      = "ukgovwales.gov.uk"
  description = ""

  records = [
    {
      name = "ukgovwales.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "151.101.2.30",
        "151.101.66.30",
        "151.101.130.30",
        "151.101.194.30"
      ]
    },
    {
      name = "ukgovwales.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ukgovwales-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "ukgovwales.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1640.awsdns-13.co.uk.",
        "ns-299.awsdns-37.com.",
        "ns-554.awsdns-05.net.",
        "ns-1342.awsdns-39.org."
      ]
    },
    {
      name = "ukgovwales.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "MS=ms15258430",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.ukgovwales.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "selector1._domainkey.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-ukgovwales-gov-uk._domainkey.justiceuk.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-ukgovwales-gov-uk._domainkey.justiceuk.onmicrosoft.com"
      ]
    },
    {
      name = "_sipfederationtls._tcp.ukgovwales.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 5061 sipfed.online.lync.com."
      ]
    },
    {
      name = "_sip._tls.ukgovwales.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 443 sipdir.online.lync.com."
      ]
    },
    {
      name = "_smtp._tls.ukgovwales.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com."
      ]
    },
    {
      name = "enterpriseenrollment.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseenrollment.manage.microsoft.com."
      ]
    },
    {
      name = "enterpriseregistration.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseregistration.windows.net."
      ]
    },
    {
      name = "lyncdiscover.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "webdir.online.lync.com."
      ]
    },
    {
      name = "sip.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sipdir.online.lync.com."
      ]
    },
    {
      name = "www.ukgovwales.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bouncer-cdn.production.govuk.service.gov.uk"
      ]
    },
    {
      name = "prg._domainkey.ukgovwales.gov.uk."
      type = "CNAME"
      ttl = 300
      records = [
        "prg.domainkey.u26148741.wl242.sendgrid.net"
      ]
    },
    {
      name = "prg.ukgovwales.gov.uk."
      type = "CNAME"
      ttl = 300
      records = [
        "u26148741.wl242.sendgrid.net"
      ]
    },
    {
      name = "prg2._domainkey.ukgovwales.gov.uk."
      type = "CNAME"
      ttl = 300
      records = [
        "prg2.domainkey.u26148741.wl242.sendgrid.net"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
