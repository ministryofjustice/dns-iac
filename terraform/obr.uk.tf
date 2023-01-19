module "obr_uk_zone" {
  source = "./modules/route53/zone"

  name        = "obr.uk."
  description = "Incl. Office 365 DNS Records"

  tags = {
    component = "None"
  }
}

module "obr_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.obr_uk_zone.zone_id

  records = [
    {
      name = "obr.uk."
      type = "A"
      ttl  = 600
      records = [
        "141.193.213.20",
        "141.193.213.21"
      ]
    },
    {
      name = "obr.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 obr-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "obr.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-944.awsdns-54.net.",
        "ns-1409.awsdns-48.org.",
        "ns-390.awsdns-48.com.",
        "ns-1648.awsdns-14.co.uk."
      ]
    },
    {
      name = "obr.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-944.awsdns-54.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "obr.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby",
        "MS=ms52860499",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.obr.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.obr.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "selector1._domainkey.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-obr-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-obr-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_mta-sts.obr.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=336295382e9a02396e7f567920594662"
      ]
    },
    {
      name = "_sipfederationtls._tcp.obr.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.obr.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.obr.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "bark.obr.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "varnish-alb-1139404551.eu-west-2.elb.amazonaws.com"
      ]
    },
    {
      name = "_6ec78a7d69ad04c2bc9b695e723dec8c.bark.obr.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_13fbeb063f172d2707a3f1889f545602.duyqrilejt.acm-validations.aws."
      ]
    },
    {
      name = "cdn.obr.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "obr.azureedge.net."
      ]
    },
    {
      name = "enterpriseenrollment.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "msoid.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "mta-sts.obr.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d340umaelxebe0.cloudfront.net."
        evaluate_target_health = true
      }
    },
    {
      name = "_e5f490047493fe002094f2e58795b7d9.mta-sts.obr.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_1114d95bbb96ee37c8c74882eb012071.nhsllhhtvj.acm-validations.aws."
      ]
    },
    {
      name = "sip.obr.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "www.obr.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "obr.uk"
      ]
    }
  ]
}