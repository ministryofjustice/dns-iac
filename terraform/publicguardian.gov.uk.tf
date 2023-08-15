module "publicguardian_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "publicguardian.gov.uk."
  description = ""

  tags = {
  }
}

module "publicguardian_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.publicguardian_gov_uk_zone.zone_id

  records = [
    {
      name = "publicguardian.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = true
      }
    }, 
    {
      name = "publicguardian.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 publicguardian-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "publicguardian.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1247.awsdns-27.org.", 
        "ns-937.awsdns-53.net.", 
        "ns-242.awsdns-30.com.", 
        "ns-1873.awsdns-42.co.uk."
      ]
    }, 
    {
      name = "publicguardian.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1247.awsdns-27.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "MS=ms49968440", 
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32 include:spf.protection.outlook.com -all", 
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby"
      ]
    }, 
    {
      name = "_asvdns-8a5e9946-76d7-4e78-83b0-5f3be2e0e7b0.publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_c569d74b-cc17-4ce4-b8e7-d1f39e380503"
      ]
    }, 
    {
      name = "_dmarc.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    }, 
    {
      name = "fp01._domainkey.publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    }, 
    {
      name = "selector1._domainkey.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-publicguardian-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "selector2._domainkey.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-publicguardian-gov-uk._domainkey.justiceuk.onmicrosoft.com"
      ]
    }, 
    {
      name = "_github-challenge-ministry-of-justice-uk.publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "26ef519666"
      ]
    }, 
    {
      name = "_github-challenge-moj-analytical-services.publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "a2fba7475d"
      ]
    }, 
    {
      name = "_mta-sts.publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=819c02822a127057b73187264f0816e3"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.publicguardian.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    }, 
    {
      name = "_sip._tls.publicguardian.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    }, 
    {
      name = "_smtp._tls.publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "autodiscover.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "enterpriseenrollment.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "lyncdiscover.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "mirovalidation.publicguardian.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "miro-verification=9f7733fab8b41c5d9bbbf63c043f10dcfec77dab"
      ]
    }, 
    {
      name = "msoid.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    }, 
    {
      name = "mta-sts.publicguardian.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "drrswg50lfd5d.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_d236ca471849f03b1e9fda8c1ad6e41c.mta-sts.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_18a1c3ac0a22b28d24331d86d21d7b4a.hnyhpvdqhv.acm-validations.aws."
      ]
    }, 
    {
      name = "sip.publicguardian.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sipdir.online.lync.com"
      ]
    }, 
    {
      name = "sirius.publicguardian.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-486.awsdns-60.com.", 
        "ns-1083.awsdns-07.org.", 
        "ns-1770.awsdns-29.co.uk.", 
        "ns-870.awsdns-44.net."
      ]
    }, 
    {
      name = "www.publicguardian.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = true
      }
    }
  ]
}