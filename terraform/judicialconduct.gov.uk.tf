module "judicialconduct_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "judicialconduct.gov.uk."
  description = "Incl. Office 365 DNS settings"

  tags = {
    component = "None"
  }
}

module "judicialconduct_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.judicialconduct_gov_uk_zone.zone_id

  records = [
    {
      name = "judicialconduct.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 judicialconduct-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "judicialconduct.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-521.awsdns-01.net.", 
        "ns-1290.awsdns-33.org.", 
        "ns-456.awsdns-57.com.", 
        "ns-1680.awsdns-18.co.uk."
      ]
    }, 
    {
      name = "judicialconduct.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-521.awsdns-01.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "judicialconduct.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms67760250", 
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all", 
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby"
      ]
    }, 
    {
      name = "_asvdns-54d73b6b-4ab6-4d59-9d84-1b1d9f1713c9.judicialconduct.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_53ed5eec-6b10-4e59-ab94-085f688f5f88"
      ]
    }, 
    {
      name = "_dmarc.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    }, 
    {
      name = "fp01._domainkey.judicialconduct.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    }, 
    {
      name = "selector1._domainkey.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-judicialconduct-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "selector2._domainkey.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-judicialconduct-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "_mta-sts.judicialconduct.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=628112f5df71f7dae54240dd017ce101"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.judicialconduct.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    }, 
    {
      name = "_sip._tls.judicialconduct.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    }, 
    {
      name = "_smtp._tls.judicialconduct.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "autodiscover.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "complaints.judicialconduct.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "complaints.judicialconduct.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "0 complaints-judicialconduct-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "complaints.judicialconduct.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "MS=ms98712360", 
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    }, 
    {
      name = "_asvdns-6d4e5f33-aec8-499f-a30d-9de3ccfc3ae9.complaints.judicialconduct.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_0f1daad9-73c3-45b9-a1b0-4f6aec84f081"
      ]
    }, 
    {
      name = "selector1._domainkey.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "selector1-complaints-judicialconduct-gov-uk._domainkey.jcio.onmicrosoft.com"
      ]
    }, 
    {
      name = "selector2._domainkey.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "selector2-complaints-judicialconduct-gov-uk._domainkey.jcio.onmicrosoft.com"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.complaints.judicialconduct.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    }, 
    {
      name = "_sip._tls.complaints.judicialconduct.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    }, 
    {
      name = "autodiscover.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "enterpriseenrollment.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "lyncdiscover.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "sip.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }, 
    {
      name = "www.complaints.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "jcio1.microsoftcrmportals.com."
      ]
    }, 
    {
      name = "enterpriseenrollment.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "lyncdiscover.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "msoid.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    }, 
    {
      name = "mta-sts.judicialconduct.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d2xal6h7kfwby2.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_0be96fa6a7f31b10a5bde19c35df1966.mta-sts.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_f079987691e5471fc81a9369dfb68983.nhsllhhtvj.acm-validations.aws."
      ]
    }, 
    {
      name = "sip.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }
  ]
}