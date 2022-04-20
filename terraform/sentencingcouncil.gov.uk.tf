module "sentencingcouncil_gov_uk" {
  source = "./modules/route53"

  domain      = "sentencingcouncil.gov.uk"
  description = ""

  records = [
    {
      name = "sentencingcouncil.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 sentencingcouncil-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "sentencingcouncil.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1525.awsdns-62.org.",
        "ns-39.awsdns-04.com.",
        "ns-670.awsdns-19.net.",
        "ns-1647.awsdns-13.co.uk."
      ]
    },
    {
      name = "sentencingcouncil.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms36749181",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.sentencingcouncil.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "selector1._domainkey.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-sentencingcouncil-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "selector2._domainkey.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-sentencingcouncil-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.sentencingcouncil.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "92c961a007"
      ]
    },
    {
      name = "_sipfederationtls._tcp.sentencingcouncil.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com."
      ]
    },
    {
      name = "_sip._tls.sentencingcouncil.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com."
      ]
    },
    {
      name = "_smtp._tls.sentencingcouncil.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com."
      ]
    },
    {
      name = "enterpriseenrollment.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com."
      ]
    },
    {
      name = "enterpriseregistration.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net."
      ]
    },
    {
      name = "lyncdiscover.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com."
      ]
    },
    {
      name = "msoid.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net."
      ]
    },
    {
      name = "sip.sentencingcouncil.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
