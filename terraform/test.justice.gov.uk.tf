module "test_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "test.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "test_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.test_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "test.justice.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "5 test-justice-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "test.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-590.awsdns-09.net.",
        "ns-455.awsdns-56.com.",
        "ns-1893.awsdns-44.co.uk.",
        "ns-1433.awsdns-51.org."
      ]
    },
    {
      name = "test.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "MS=ms21450401",
        "CJB4eDFHApptKGleyfdsYETS5iWsnpXxjV7KZuMplC7RJjAKFPeuW+EaDMasS4dbfmAvUM5NPyLqk8XRCWCTmQ==",
        "v=spf1 ip4:195.59.75.140/32 ip4:195.59.75.12/32 include:spf.protection.outlook.com ~all"
      ]
    },
    {
      name = "_dmarc.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.test.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "selector1._domainkey.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-test-justice-gov-uk._domainkey.testJusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-test-justice-gov-uk._domainkey.testJusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_sipfederationtls._tcp.test.justice.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com."
      ]
    },
    {
      name = "_sip._tls.test.justice.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com."
      ]
    },
    {
      name = "autodiscover.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "cloud-platform.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "demo-app.acme-apps.cloud-platform-test-13.k8s.integration.dsd.io."
      ]
    },
    {
      name = "dzc.test.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.179"
      ]
    },
    {
      name = "dzc.test.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "Mq9AgcAW"
      ]
    },
    {
      name = "enterpriseenrollment.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com."
      ]
    },
    {
      name = "enterpriseregistration.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net."
      ]
    },
    {
      name = "fax.test.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "2.2.2.2"
      ]
    },
    {
      name = "fax.test.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 fax-test-justice-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "fax.test.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ip4:195.59.75.140/32 ip4:195.59.75.12/32  include:spf.protection.outlook.com ~all"
      ]
    },
    {
      name = "_dmarc.fax.test.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;sp=none;fo=1;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@justice.gov.uk;ruf=mailto:dmarc-ruf@dmarc.service.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.fax.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-fax.test.justice.gov.uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.fax.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-fax.test.justice.gov.uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "legacy.test.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "157.203.177.180"
      ]
    },
    {
      name = "lyncdiscover.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com."
      ]
    },
    {
      name = "mail.test.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "157.203.177.179"
      ]
    },
    {
      name = "mrs.test.justice.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "157.203.177.179"
      ]
    },
    {
      name = "msoid.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net."
      ]
    },
    {
      name = "_580ab60a2ee907dfb79b7e31cc74603c.mta-sts.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_06c4f7d11082aeba8704d066a7e482cb.xjncphngnr.acm-validations.aws."
      ]
    },
    {
      name = "noreply.test.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ip4:195.59.75.140/32 ip4:195.59.75.12/32 -all"
      ]
    },
    {
      name = "_dmarc.noreply.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01.noreply.test.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    },
    {
      name = "sip.test.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com."
      ]
    },
    {
      name = "smtp.test.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.59.75.140",
        "195.59.75.12"
      ]
    },
    {
      name = "sts.test.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-401.awsdns-50.com.",
        "ns-760.awsdns-31.net.",
        "ns-1234.awsdns-26.org.",
        "ns-1810.awsdns-34.co.uk."
      ]
    }
  ]
}

moved {
  from = module.test_justice_gov_uk.aws_route53_record.default
  to   = module.test_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.test_justice_gov_uk.aws_route53_zone.default
  to   = module.test_justice_gov_uk_zone.aws_route53_zone.this
}
