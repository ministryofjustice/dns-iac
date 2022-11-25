module "judicialconduct_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "judicialconduct.gov.uk"
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
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms67760250",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
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
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
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
      name = "sip.judicialconduct.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }
  ]
}

moved {
  from = module.judicialconduct_gov_uk.aws_route53_record.default
  to   = module.judicialconduct_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.judicialconduct_gov_uk.aws_route53_zone.default
  to   = module.judicialconduct_gov_uk_zone.aws_route53_zone.this
}
