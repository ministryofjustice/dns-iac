module "hmiprisons_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "hmiprisons.gov.uk."
  description = "Incl. Office 365 DNS records"

  tags = {
    component = "None"
  }
}

module "hmiprisons_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.hmiprisons_gov_uk_zone.zone_id

  records = [
    {
      name = "hmiprisons.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 hmiprisons-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "hmiprisons.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-826.awsdns-39.net.", 
        "ns-1605.awsdns-08.co.uk.", 
        "ns-367.awsdns-45.com.", 
        "ns-1507.awsdns-60.org."
      ]
    }, 
    {
      name = "hmiprisons.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-826.awsdns-39.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "hmiprisons.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms62755470", 
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all", 
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby"
      ]
    }, 
    {
      name = "_asvdns-ee832343-ceef-4fc6-ba97-68aa978af228.hmiprisons.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_5486d07e-660f-4b5f-a097-017744cdc1de"
      ]
    }, 
    {
      name = "_dmarc.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    }, 
    {
      name = "fp01._domainkey.hmiprisons.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    }, 
    {
      name = "selector1._domainkey.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-hmiprisons-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "selector2._domainkey.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-hmiprisons-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "_mta-sts.hmiprisons.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=a9e2b55dbbb2b9e38e8ccf6b9a194dd8"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.hmiprisons.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    }, 
    {
      name = "_sip._tls.hmiprisons.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    }, 
    {
      name = "_smtp._tls.hmiprisons.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "autodiscover.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "enterpriseenrollment.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "lyncdiscover.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "msoid.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    }, 
    {
      name = "mta-sts.hmiprisons.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d1tjzr1uxijqgl.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_e78bfc9e1e00e45bc5fcf5fb02f0a6a1.mta-sts.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_43c3e0b7df86059bd400da6494578842.rdnyqppgxp.acm-validations.aws."
      ]
    }, 
    {
      name = "sip.hmiprisons.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }
  ]
}