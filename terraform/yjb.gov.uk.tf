module "yjb_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "yjb.gov.uk"
  tags = merge(local.yjb_tags, {
    is-production = true
    application   = "Youth Justice Board root domain"
  })
}

module "yjb_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.yjb_gov_uk_zone.zone_id

  records = [
    {
      name = "yjb.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "yjb.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 yjb-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "yjb.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-919.awsdns-50.net.",
        "ns-134.awsdns-16.com.",
        "ns-1281.awsdns-32.org.",
        "ns-1747.awsdns-26.co.uk."
      ]
    },
    {
      name = "yjb.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms19252221",
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32 ip4:5.61.115.16/28  include:spf.protection.outlook.com -all",
        "amazonses:umSaWIsothFWgBUFNjeubrOCY2aZngv3GZdQC//l9pw="
      ]
    },
    {
      name = "_amazonses.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "X3sGvECv6KhfD+HIJ8qEaK+f9WTn/qe+so/J2QGfOes=",
        "umSaWIsothFWgBUFNjeubrOCY2aZngv3GZdQC//l9pw=",
        "tkpUbxjtqBJZ7omYLX6y95ukBWnkHuaLygBD6VQ7his="
      ]
    },
    {
      name = "_dmarc.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "2dbx4addpy7nyj76mioylqhzphrymyma._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "2dbx4addpy7nyj76mioylqhzphrymyma.dkim.amazonses.com"
      ]
    },
    {
      name = "4odkx3g7muxcfn5eydas4f3kslwcp3h6._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "4odkx3g7muxcfn5eydas4f3kslwcp3h6.dkim.amazonses.com"
      ]
    },
    {
      name = "74ipytkywwg56t5grugytb2nbnswmfua._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "74ipytkywwg56t5grugytb2nbnswmfua.dkim.amazonses.com"
      ]
    },
    {
      name = "anugym6qhqpgzbegpxrp26htx36nixrm._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "anugym6qhqpgzbegpxrp26htx36nixrm.dkim.amazonses.com"
      ]
    },
    {
      name = "ba57tyzq6qama5pndafilxh57qhain5m._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ba57tyzq6qama5pndafilxh57qhain5m.dkim.amazonses.com"
      ]
    },
    {
      name = "coo6soxcnaluiv3zpqvxtfdzo5wkoyup._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "coo6soxcnaluiv3zpqvxtfdzo5wkoyup.dkim.amazonses.com"
      ]
    },
    {
      name = "e7gd2dqpsoczd4yaw6o2wr3jdjevenke._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "e7gd2dqpsoczd4yaw6o2wr3jdjevenke.dkim.amazonses.com"
      ]
    },
    {
      name = "fp01._domainkey.yjb.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DKIM1\\;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB\\;"
      ]
    },
    {
      name = "gbqwy5gdcrmac5t7ulfw3fzond3hosyx._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "gbqwy5gdcrmac5t7ulfw3fzond3hosyx.dkim.amazonses.com"
      ]
    },
    {
      name = "poppulo._domainkey.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvvHJLmxmPZEMD2s57EE6c/KorzCNfGc0wDBEYBXNJ96RDRXUFrWY+FRyKt9DERuoD0Ux19ixbTfpYdux2tKuemIZVEhraxOPvmJYJ2SUnCY8m+oMRfgNT+HFM6pnjCTJKz4L95Gn8mmHaep+WfRN96N9fEh3ze/USenwl8Z+C7hIuZ4H6QNHr5/yp+3mwCM3W\"\"b2//2LOvt2Sy8XAVWVy1NOtj/Vi0XCu8FOMecNBjWWA74oHXt2VNB2JIEy1w2trllYp/XMWGEAaz2TrGm144Z4t1UE8qVHGp5EBdRSHFqvkwZ9BtX4ajywaIjpFOHk/vDjE2w+MvbPdg/ElnvmtewIDAQAB"
      ]
    },
    {
      name = "selector1._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "selector2._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "wfsjcdiwg5pc3ylq2vsglviwye5xwdvm._domainkey.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "wfsjcdiwg5pc3ylq2vsglviwye5xwdvm.dkim.amazonses.com"
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.yjb.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "6e0b07fb16"
      ]
    },
    {
      name = "_sipfederationtls._tcp.yjb.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com."
      ]
    },
    {
      name = "_sip._tls.yjb.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com."
      ]
    },
    {
      name = "_smtp._tls.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com."
      ]
    },
    {
      name = "yjsm-cug.compliance.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "125.126.225.1"
      ]
    },
    {
      name = "enterpriseenrollment.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com."
      ]
    },
    {
      name = "enterpriseregistration.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net."
      ]
    },
    {
      name = "idm.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "82.153.133.251"
      ]
    },
    {
      name = "juniper-smtp.yjb.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 feedback-smtp.eu-west-2.amazonses.com"
      ]
    },
    {
      name = "juniper-smtp.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:amazonses.com -all"
      ]
    },
    {
      name = "lyncdiscover.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com."
      ]
    },
    {
      name = "mail-acp1.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.63.4.208"
      ]
    },
    {
      name = "mail-acp2.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.63.4.212"
      ]
    },
    {
      name = "mail-bbp1.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.63.15.48"
      ]
    },
    {
      name = "mail-bbp2.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.63.15.52"
      ]
    },
    {
      name = "msoid.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net."
      ]
    },
    {
      name = "nleidm.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "82.153.133.251"
      ]
    },
    {
      name = "nleselfservice.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "82.153.133.251"
      ]
    },
    {
      name = "owa.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.130.81.99"
      ]
    },
    {
      name = "yjsm-cug.sandpit.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "125.126.225.1"
      ]
    },
    {
      name = "selfservice.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "82.153.133.251"
      ]
    },
    {
      name = "servicedesk.yjb.gov.uk."
      type = "NS"
      ttl  = 3600
      records = [
        "ns1.gradwellcloud.com.",
        "ns2.gradwellcloud.com."
      ]
    },
    {
      name = "sip.yjb.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com."
      ]
    },
    {
      name = "theexchange.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.130.81.99"
      ]
    },
    {
      name = "ukcloud.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.231.96.86"
      ]
    },
    {
      name = "www.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "80.86.42.110"
      ]
    },
    {
      name = "y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "idm.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "login.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "nleidm.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "nlelogin.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "nleselfservice.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "portal.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "www.portal.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "selfservice.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "smtp.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "83.151.208.61"
      ]
    },
    {
      name = "test.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "train.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "uat.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "uatlogin.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "www.y2a.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "y2alogin.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "y2apilot.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "www.y2apilot.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "y2auat.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "y2auatlogin.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "62.232.198.68"
      ]
    },
    {
      name = "yjaf-smtp-pp.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "23.249.219.93"
      ]
    },
    {
      name = "yjaf-smtp.yjb.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "23.249.219.92"
      ]
    },
    {
      name = "yjaf-smtp.yjb.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 feedback-smtp.eu-west-2.amazonses.com"
      ]
    },
    {
      name = "yjaf-smtp.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:amazonses.com -all"
      ]
    },
    {
      name = "yjaf.yjb.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1213.awsdns-23.org.",
        "ns-2007.awsdns-58.co.uk.",
        "ns-284.awsdns-35.com.",
        "ns-555.awsdns-05.net."
      ]
    },
    {
      name = "yjbservices.yjb.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 yjbservices-yjb-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "yjbservices.yjb.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-397.awsdns-49.com.",
        "ns-844.awsdns-41.net.",
        "ns-1595.awsdns-07.co.uk.",
        "ns-1417.awsdns-49.org."
      ]
    },
    {
      name = "yjbservices.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.yjbservices.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.yjbservices.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-yjbservices-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.yjbservices.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-yjbservices-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "_cdb8a1ec6dba331f6b47645d09fdaf73.pentaho8.yjbservices.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_f5a40d50eaf3b1699ed0f74ce2735ef4.xrchbtpdjs.acm-validations.aws."
      ]
    },
    {
      name = "portal.yjbservices.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "83.151.208.61"
      ]
    },
    {
      name = "training.yjbservices.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "51.179.197.141"
      ]
    },
    {
      name = "yjbservicespp.yjb.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 yjbservicespp-yjb-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "yjbservicespp.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.yjbservicespp.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.yjbservicespp.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "selector1-yjbservicespp-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.yjbservicespp.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-yjbservicespp-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "portal.yjbservicespp.yjb.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "83.151.208.61"
      ]
    },
    {
      name = "youthjustice.yjb.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 youthjustice-yjb-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "youthjustice.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.youthjustice.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.youthjustice.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-youthjustice-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.youthjustice.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-youthjustice-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "youthjusticepp.yjb.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 youthjusticepp-yjb-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "youthjusticepp.yjb.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.youthjusticepp.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.youthjusticepp.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-youthjusticepp-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.youthjusticepp.yjb.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-youthjusticepp-yjb-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }
  ]
}

moved {
  from = module.yjb_gov_uk.aws_route53_record.default
  to   = module.yjb_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.yjb_gov_uk.aws_route53_zone.default
  to   = module.yjb_gov_uk_zone.aws_route53_zone.this
}
