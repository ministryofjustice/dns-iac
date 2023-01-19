module "lawcommission_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "lawcommission.gov.uk"
  description = "Incl. Office 365 DNS records"

  tags = {
    component = "None"
  }
}

module "lawcommission_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.lawcommission_gov_uk_zone.zone_id

  records = [
    {
      name = "lawcommission.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 lawcommission-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "lawcommission.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-825.awsdns-39.net.",
        "ns-1968.awsdns-54.co.uk.",
        "ns-276.awsdns-34.com.",
        "ns-1452.awsdns-53.org."
      ]
    },
    {
      name = "lawcommission.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby",
        "MS=ms11088500",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.lawcommission.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "selector1._domainkey.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-lawcommission-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-lawcommission-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_sipfederationtls._tcp.lawcommission.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.lawcommission.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.lawcommission.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "enterpriseenrollment.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "msoid.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "sip.lawcommission.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }
  ]
}

moved {
  from = module.lawcommission_gov_uk.aws_route53_record.default
  to   = module.lawcommission_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.lawcommission_gov_uk.aws_route53_zone.default
  to   = module.lawcommission_gov_uk_zone.aws_route53_zone.this
}
