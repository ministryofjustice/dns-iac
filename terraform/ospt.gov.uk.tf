module "ospt_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "ospt.gov.uk."
  description = "Incl. Office 365 DNS records"

  tags = {
    component = "None"
  }
}

module "ospt_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.ospt_gov_uk_zone.zone_id

  records = [
    {
      name = "ospt.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "ospt.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 ospt-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "ospt.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1855.awsdns-39.co.uk.", 
        "ns-43.awsdns-05.com.", 
        "ns-847.awsdns-41.net.", 
        "ns-1042.awsdns-02.org."
      ]
    }, 
    {
      name = "ospt.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1855.awsdns-39.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "ospt.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms66225806", 
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all", 
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby"
      ]
    }, 
    {
      name = "_asvdns-f4256ae3-55cc-40ce-86cc-d3f833d93494.ospt.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_b4fd8690-df31-4d0c-8e66-5075ab7e382e"
      ]
    }, 
    {
      name = "_dmarc.ospt.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    }, 
    {
      name = "47klhk64a2fmag4rljvb7umybpa22yff._domainkey.ospt.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "47klhk64a2fmag4rljvb7umybpa22yff.dkim.amazonses.com"
      ]
    }, 
    {
      name = "fp01._domainkey.ospt.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    }, 
    {
      name = "jqperhgxfk4yltn7kshs2uat7royantt._domainkey.ospt.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "jqperhgxfk4yltn7kshs2uat7royantt.dkim.amazonses.com"
      ]
    }, 
    {
      name = "selector1._domainkey.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-ospt-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "selector2._domainkey.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-ospt-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "syeasxotcr6glafifmrsqjviy2ho6v63._domainkey.ospt.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "syeasxotcr6glafifmrsqjviy2ho6v63.dkim.amazonses.com"
      ]
    }, 
    {
      name = "_mta-sts.ospt.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=507a481cc88850198bb9445c9f882b62"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.ospt.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    }, 
    {
      name = "_sip._tls.ospt.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    }, 
    {
      name = "_smtp._tls.ospt.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "autodiscover.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "enterpriseenrollment.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "lyncdiscover.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "msoid.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    }, 
    {
      name = "mta-sts.ospt.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d1ph6h5194eqy.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_01a6193a9fc29e76510ba8698a3d24eb.mta-sts.ospt.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_eb634dfeae92e852f8f6316267a21164.nhsllhhtvj.acm-validations.aws."
      ]
    }, 
    {
      name = "sip.ospt.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }, 
    {
      name = "soteria.ospt.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 feedback-smtp.eu-west-1.amazonses.com"
      ]
    }, 
    {
      name = "soteria.ospt.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:amazonses.com -all"
      ]
    }
  ]
}