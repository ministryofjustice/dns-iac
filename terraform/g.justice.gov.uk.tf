module "g_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "g.justice.gov.uk"
  description = "Secondary domain for Google Apps pilot"

  tags = {
    component = "None"
  }
}

module "g_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.g_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "g.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "1 ASPMX.L.GOOGLE.COM.",
        "5 ALT1.ASPMX.L.GOOGLE.COM.",
        "5 ALT2.ASPMX.L.GOOGLE.COM.",
        "10 ASPMX2.GOOGLEMAIL.COM.",
        "10 ASPMX3.GOOGLEMAIL.COM."
      ]
    },
    {
      name = "g.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-258.awsdns-32.com.",
        "ns-2040.awsdns-63.co.uk.",
        "ns-1437.awsdns-51.org.",
        "ns-930.awsdns-52.net."
      ]
    },
    {
      name = "g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=aYAYXwp0mvQFTBCjBOC_ewRCuNd7PtehyIoO0KoulO8",
        "v=spf1 include:spf.protection.outlook.com include:_spf.google.com ip4:194.33.196.8/32 ip4:194.33.192.8/32 ~all"
      ]
    },
    {
      name = "_dmarc.g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "google._domainkey.g.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCoTzSxHJXukDrzv6e1DqOXod/x5q4zX/rieTWt/IRK/BiOJjJKgERhY9k+ipUCnu9q9ykYcMB0pgn4v3ixg3jAG6Tia2H4x/azDxNYbl4kk+JDi8Jqq7v18TKp24a+GbIZNHSX6dY40yzBpTGK6toEDR90fVSzelivtOhQ7BSlRwIDAQAB"
      ]
    },
    {
      name = "_smtp._tls.g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }
  ]
}

moved {
  from = module.g_justice_gov_uk.aws_route53_record.default
  to   = module.g_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.g_justice_gov_uk.aws_route53_zone.default
  to   = module.g_justice_gov_uk_zone.aws_route53_zone.this
}
