module "publicguardian_gov_uk" {
  source = "./modules/route53"

  domain      = "publicguardian.gov.uk"
  description = ""

  records = [
    {
      name = "_dmarc.publicguardian.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "_github-challenge-ministry-of-justice-uk.publicguardian.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "26ef519666"
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.publicguardian.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "a2fba7475d"
      ]
    },
    {
      name = "_sip._tls.publicguardian.gov.uk"
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_sipfederationtls._tcp.publicguardian.gov.uk"
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.publicguardian.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "enterpriseenrollment.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "fp01._domainkey.publicguardian.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "lyncdiscover.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "mirovalidation.publicguardian.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "miro-verification=9f7733fab8b41c5d9bbbf63c043f10dcfec77dab"
      ]
    },
    {
      name = "msoid.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "publicguardian.gov.uk"
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com"
        evaluate_target_health = true
      }
    },
    {
      name = "publicguardian.gov.uk"
      type = "MX"
      ttl  = 300
      records = [
        "0 publicguardian-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "publicguardian.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "MS=ms49968440\\\",\\\"v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "selector1._domainkey.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-publicguardian-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-publicguardian-gov-uk._domainkey.justiceuk.onmicrosoft.com"
      ]
    },
    {
      name = "sip.publicguardian.gov.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "www.publicguardian.gov.uk"
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com"
        evaluate_target_health = true
      }
    }
  ]
}
