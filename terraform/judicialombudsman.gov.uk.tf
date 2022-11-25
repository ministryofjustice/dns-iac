module "judicialombudsman_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "judicialombudsman.gov.uk"
  description = "Incl. Office 365 DNS Records"

  tags = {
    component = "None"
  }
}

module "judicialombudsman_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.judicialombudsman_gov_uk_zone.zone_id

  records = [
    {
      name = "judicialombudsman.gov.uk."
      type = "A"
      alias = {
        name = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "judicialombudsman.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 JudicialOmbudsman-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "judicialombudsman.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1999.awsdns-57.co.uk.",
        "ns-948.awsdns-54.net.",
        "ns-1195.awsdns-21.org.",
        "ns-441.awsdns-55.com."
      ]
    },
    {
      name = "judicialombudsman.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms63701323",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.judicialombudsman.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "selector1._domainkey.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-JudicialOmbudsman-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-JudicialOmbudsman-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_sipfederationtls._tcp.judicialombudsman.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.judicialombudsman.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "_sip._tls.judicialombudsman.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "autodiscover.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "enterpriseenrollment.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "msoid.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "sip.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "www.judicialombudsman.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "judicialombudsman.gov.uk"
      ]
    }
  ]

}

moved {
  from = module.judicialombudsman_gov_uk.aws_route53_record.default
  to   = module.judicialombudsman_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.judicialombudsman_gov_uk.aws_route53_zone.default
  to   = module.judicialombudsman_gov_uk_zone.aws_route53_zone.this
}
