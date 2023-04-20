module "justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.justice_gov_uk_zone.zone_id

  records = [
    {
      name = "justice.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 justice-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-160.awsdns-20.com.",
        "ns-1534.awsdns-63.org.",
        "ns-1586.awsdns-06.co.uk.",
        "ns-987.awsdns-59.net."
      ]
    },
    {
      name = "justice.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-160.awsdns-20.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby",
        "v=spf1 ip4:194.33.196.0/24 ip4:194.33.192.0/24 include:spf.protection.outlook.com include:_spf.google.com include:mail-relay.staff.service.justice.gov.uk -all",
        "QuoVadis=7646126a-d75d-4bfd-8fc3-138170e3f362",
        "MS=ms58266631",
        "BTUhp9Uq4ukuVfeGN5jrIsf32ll79sBSGRw0qc+3XoO2ewFCNNdhMIMb+tj5xdom8y7CWGgxtthH/9mE/p8+Yg==",
        "2022100614445019nl5f39osxxoy14p9la8sh5vxah0exxp0ime2mh0w4tu19egv",
        "amazonses:7TpoWZygS3NuQ4e4VDNJ7yM1uQtxz7ZTVuPQ57Njtog=",
        "miro-verification=9f7733fab8b41c5d9bbbf63c043f10dcfec77dab",
        "apple-domain-verification=KiQwp8vi9tLuxYuq",
        "docker-verification=8fa11c18-0390-42a7-b542-66b46f9ac82e",
        "Dynatrace-site-verification=b3468c91-d00e-4550-b156-92df0139d471__5ae4ot4eoj67h6tepojhf93del"
      ]
    },
    {
      name = "#civilmediation.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "92.63.139.212"
      ]
    },
    {
      name = "_amazonses.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "V9UFWT58TFN4bvzNq3kucIBHJ0LvG2tzcyO4XMcux5M=",
        "7TpoWZygS3NuQ4e4VDNJ7yM1uQtxz7ZTVuPQ57Njtog="
      ]
    },
    {
      name = "_dmarc_legacydomain_policy.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_dmarc_ttp_policy.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_dnsauth.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k85gchvy2hq9nrf470ljl9bd9hb8v495"
      ]
    },
    {
      name = "eat75rimokuwmhwl3jgruwwxghgmltna._domainkey.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "eat75rimokuwmhwl3jgruwwxghgmltna.dkim.amazonses.com"
      ]
    },
    {
      name = "fmk7xlvhjfqqruhiytlb6434lcykrduv._domainkey.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "fmk7xlvhjfqqruhiytlb6434lcykrduv.dkim.amazonses.com"
      ]
    },
    {
      name = "fp01._domainkey.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DKIM1\\;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB\\;"
      ]
    },
    {
      name = "google._domainkey.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCjKJioa9/GlQwqb42NP0GyDLggv5QbCMtLFK4lMLZARIxPaZlhrcvqw61GnNYMZHuFw43ifib/9mvd+9KKrH4jLO+vVdtlgEE1EWwZFocT0nqQCKKF5nhjiA77t8n+H7BC09u8kF8JJ5X0oqxjTpb28MsfT02EMV3VWjf94Rc0vwIDAQAB"
      ]
    },
    {
      name = "nogh2wrclnc7kkukcm26lowx6qdmbs3w._domainkey.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "nogh2wrclnc7kkukcm26lowx6qdmbs3w.dkim.amazonses.com"
      ]
    },
    {
      name = "selector1._domainkey.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "selector2._domainkey.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "u4wwsopiajlepnevuytnwa3ob34xisjv._domainkey.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "u4wwsopiajlepnevuytnwa3ob34xisjv.dkim.amazonses.com"
      ]
    },
    {
      name = "wcolxqqtrukhi3z66nvjeu3oftlzy6o6._domainkey.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "wcolxqqtrukhi3z66nvjeu3oftlzy6o6.dkim.amazonses.com"
      ]
    },
    {
      name = "zer52fvryrnfdepqqw2xl2huersvzctv._domainkey.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "zer52fvryrnfdepqqw2xl2huersvzctv.dkim.amazonses.com"
      ]
    },
    {
      name = "_github-challenge-hmcts.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "dee83991da"
      ]
    },
    {
      name = "_github-challenge-ministryofjustice.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "01fbf9c0af"
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "610cab0fa8"
      ]
    },
    {
      name = "_sipfederationtls._tcp.justice.gov.uk."
      type = "SRV"
      ttl  = 600
      records = [
        "100 1 5061 sipfed.online.lync.com."
      ]
    },
    {
      name = "_sip._tls.justice.gov.uk."
      type = "SRV"
      ttl  = 600
      records = [
        "100 1 443 sipdir.online.lync.com."
      ]
    },
    {
      name = "_smtp._tls.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "administrativecourtoffice.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 cluster5.eu.messagelabs.com",
        "20 cluster5a.eu.messagelabs.com"
      ]
    },
    {
      name = "administrativecourtoffice.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=spf1 include:spf.messagelabs.com -all",
        "C0E4N61551",
        "MS=ms89669471"
      ]
    },
    {
      name = "adcourt._domainkey.administrativecourtoffice.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; k=rsa; t=s; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo/yrXLY2upCZjWvrEJPSr+RXhnQDcKlsycRi1t4N+R8c+oiqSKumZpnnOaRd6rX3mgn4sb3WEmgv+9FxTDKSWF4TZvdBiLYG3/F3nHCIixTjp4bH\"\"uv4MUjLR+1knzmWK8CtEUENmrIWlxMLMXcryR9lVvyNG6pqS4pNcKWHu4f/fyq6i+LSB1QqQGXZfqi/gfsrBD4ZyCvXH+3tlNgd03HM1PNHaUKXZe+fZEEZW8v1zttsJ+mOyF494Af59xO0xCS4V+CTQGeha/4c/nI36WFz/rfFI+CtjHjq0c046VLURIex08V4fxlngtZi7buAlS6kpS57wbOkHzstI/+jyAQIDAQAB"
      ]
    },
    {
      name = "aka-hmctsformfinder.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bouncer-cdn.production.govuk.service.gov.uk."
      ]
    },
    {
      name = "aka.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bouncer-cdn.production.govuk.service.gov.uk"
      ]
    },
    {
      name = "_acme-challenge.aka.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "jjqyvepy7l3pvkvjz1.fastly-validations.com"
      ]
    },
    {
      name = "appleid.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "apple-domain-verification=IzxRgXTAlVnlETWV"
      ]
    },
    {
      name = "libra-prod.apps.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.247.3.128"
      ]
    },
    {
      name = "autodiscover.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "az.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-09.azure-dns.com",
        "ns2-09.azure-dns.net",
        "ns2-09.azure-dns.org",
        "ns4-09.azure-dns.info"
      ]
    },
    {
      name = "hmctscourtfinder.bl.justice.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "hmctsformfinder.bl.justice.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "blogs.justice.gov.uk."
      type = "NS"
      ttl  = 900
      records = [
        "ns-393.awsdns-49.com.",
        "ns-856.awsdns-43.net.",
        "ns-1034.awsdns-01.org.",
        "ns-1678.awsdns-17.co.uk."
      ]
    },
    {
      name = "ca.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ca-justice-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "ca.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_dmarc.ca.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.ca.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-ca-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "selector2._domainkey.ca.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-ca-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com."
      ]
    },
    {
      name = "autodiscover.ca.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com."
      ]
    },
    {
      name = "careertransition.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.42.110"
      ]
    },
    {
      name = "www.careertransition.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.42.110"
      ]
    },
    {
      name = "casetracker.justice.gov.uk."
      type = "NS"
      ttl  = 14400
      records = [
        "ns-1665.awsdns-16.co.uk.",
        "ns-354.awsdns-44.com.",
        "ns-950.awsdns-54.net.",
        "ns-1424.awsdns-50.org."
      ]
    },
    {
      name = "_dmarc.casetracker.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "ccmstraining.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = false
        name                   = "d1ljok6fhs1ra3.cloudfront.net"
        zone_id                = "Z2FDTNDATAQYW2"
      }
    },
    {
      name = "_d97fb4f4ad2c4d0e83508935752915f1.ccmstraining.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_b29507f55a1a8cfff56166f65e9f5b81.wggjkglgrm.acm-validations.aws."
      ]
    },
    {
      name = "certificatedbailiffs.justice.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-1656.awsdns-15.co.uk.",
        "ns-1430.awsdns-50.org.",
        "ns-902.awsdns-48.net.",
        "ns-387.awsdns-48.com."
      ]
    },
    {
      name = "civil-eligibility-calculator.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1044.awsdns-02.org.",
        "ns-725.awsdns-26.net.",
        "ns-7.awsdns-00.com.",
        "ns-1729.awsdns-24.co.uk."
      ]
    },
    {
      name = "civilmediation.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = false
        name                   = "dualstack.civil-mediation-load-377727311.eu-west-2.elb.amazonaws.com"
        zone_id                = "ZHURV8PSTC4K8"
      }
    },
    {
      name = "_1b792c2153cf927328615e78010f7852.civilmediation.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_672e46231dca8c8a2e623dbbe513ce63.ltfvzjuylp.acm-validations.aws."
      ]
    },
    {
      name = "www.civilmediation.justice.gov.uk."
      type = "A"
      alias = {
        name                   = "dualstack.civil-mediation-load-377727311.eu-west-2.elb.amazonaws.com"
        zone_id                = "ZHURV8PSTC4K8"
        evaluate_target_health = false
      }
    },
    {
      name = "_0970bea3431bc1236acaba02e9f46366.www.civilmediation.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_06d0edbac8d4d3afa9588239dd3d341d.ltfvzjuylp.acm-validations.aws."
      ]
    },
    {
      name = "cjscp.justice.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "10 mx00003.skyscapecloud.com.",
        "10 mx00004.skyscapecloud.com."
      ]
    },
    {
      name = "cjscp.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=spf1 mx -all"
      ]
    },
    {
      name = "_dmarc.cjscp.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_smtp._tls.cjscp.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "confluence.cjscp.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "triadmoj.atlassian.net."
      ]
    },
    {
      name = "dev.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.178"
      ]
    },
    {
      name = "devbuild.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.178"
      ]
    },
    {
      name = "devsandbox.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.182"
      ]
    },
    {
      name = "jira.cjscp.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "triadmoj.atlassian.net."
      ]
    },
    {
      name = "modeloffice.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.178"
      ]
    },
    {
      name = "preprod.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.179"
      ]
    },
    {
      name = "production.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.180"
      ]
    },
    {
      name = "support.cjscp.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "triadmoj.atlassian.net."
      ]
    },
    {
      name = "test.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.181"
      ]
    },
    {
      name = "wiki.cjscp.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "triadmoj.atlassian.net."
      ]
    },
    {
      name = "www.cjscp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.180"
      ]
    },
    {
      name = "cjsm.justice.gov.uk."
      type = "NS"
      ttl  = 900
      records = [
        "ns-24.awsdns-03.com.",
        "ns-1011.awsdns-62.net.",
        "ns-1398.awsdns-46.org.",
        "ns-1759.awsdns-27.co.uk."
      ]
    },
    {
      name = "claonlineadvice.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "81.105.223.242"
      ]
    },
    {
      name = "www.claonlineadvice.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "89.185.223.242"
      ]
    },
    {
      name = "commissioning.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "62.208.147.100"
      ]
    },
    {
      name = "consult.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "cs-moj.delib.net."
      ]
    },
    {
      name = "contact.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 mail.contact.justice.gov.uk"
      ]
    },
    {
      name = "contact.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ip4:51.143.128.114  -all"
      ]
    },
    {
      name = "mail.contact.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.143.128.114"
      ]
    },
    {
      name = "courtfines.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = false
        name                   = "dualstack.court-loadb-8mcola2l2by0-173012739.eu-west-2.elb.amazonaws.com"
        zone_id                = "ZHURV8PSTC4K8"
      }
    },
    {
      name = "_2a1a4e48c8d67e03e4dd87b69d34149c.courtfines.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_6c5fbab046ead6c93bd45423c9084efd.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "_3aac79b257286a0493e2380447480616.courtfines.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_adad5fb8a7388fa6c39cc5b39528cd6e.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "courtstore.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "35.177.112.189"
      ]
    },
    {
      name = "courtstore.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "1 ASPMX.L.GOOGLE.COM.",
        "5 ALT1.ASPMX.L.GOOGLE.COM.",
        "5 ALT2.ASPMX.L.GOOGLE.COM.",
        "10 ALT3.ASPMX.L.GOOGLE.COM.",
        "10 ALT4.ASPMX.L.GOOGLE.COM."
      ]
    },
    {
      name = "courtstore.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:_spf.google.com -all",
        "google-site-verification=Nth0cgF0QH5N62b8dNqgsit8N3okHPzips4MlRHrBM8",
        "apple-domain-verification=50f0lhf7PW4g8oXe"
      ]
    },
    {
      name = "bench.courtstore.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "18.132.11.99"
      ]
    },
    {
      name = "demo.courtstore.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.196"
      ]
    },
    {
      name = "perf.courtstore.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.179.193.67"
      ]
    },
    {
      name = "perf.courtstore.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "1\tASPMX.L.GOOGLE.COM.",
        "5\tALT1.ASPMX.L.GOOGLE.COM.",
        "5\tALT2.ASPMX.L.GOOGLE.COM.",
        "10\tALT3.ASPMX.L.GOOGLE.COM.",
        "10\tALT4.ASPMX.L.GOOGLE.COM."
      ]
    },
    {
      name = "perf.courtstore.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:_spf.google.com -all",
        "google-site-verification=_ddDla0QaTcjKV5-KS1pOP5mPawCieNoirKehWsPo2E"
      ]
    },
    {
      name = "preprod.courtstore.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.179.193.66"
      ]
    },
    {
      name = "bench.preprod.courtstore.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.179.193.67"
      ]
    },
    {
      name = "qa.courtstore.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.196"
      ]
    },
    {
      name = "yots.courtstore.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.74.130.121"
      ]
    },
    {
      name = "courtstorepp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.231.96.56"
      ]
    },
    {
      name = "crimeportal.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-01.azure-dns.com",
        "ns2-01.azure-dns.net",
        "ns3-01.azure-dns.org",
        "ns4-01.azure-dns.info"
      ]
    },
    {
      name = "nle.crimeportal.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "8f63c407-7450-4407-9da3-a04eaa525dcc.cloudapp.net"
      ]
    },
    {
      name = "www.crimeportal.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "2de37183-b02f-4a0b-965d-0bd0de2d79fc.cloudapp.net"
      ]
    },
    {
      name = "criminal-justice-scorecard.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-537.awsdns-03.net.",
        "ns-1184.awsdns-20.org.",
        "ns-1809.awsdns-34.co.uk.",
        "ns-133.awsdns-16.com."
      ]
    },
    {
      name = "criminal-justice-scorecard.justice.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "Reserved for the Criminal Justice Scorecard project"
      ]
    },
    {
      name = "criminalappealoffice.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 cluster5.eu.messagelabs.com",
        "20 cluster5a.eu.messagelabs.com"
      ]
    },
    {
      name = "criminalappealoffice.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=spf1 include:spf.messagelabs.com -all",
        "C0E4N61551",
        "MS=ms43105042"
      ]
    },
    {
      name = "crimcourt._domainkey.criminalappealoffice.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; k=rsa; t=s; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoN235ryj/6Ca/yN0JR71q8gM7CCjNLOFKiq08sX2ZO9fuKGHCIJYrcfLJI0zfEKUjbB3soLt7Y4fFf3QsCWNYreutXkmVqoVvakegZhFHSiWhWf/IjQ/S5gbYEJna\"\"wpiZj9QjJXV1f1AcYHCCfWYiiyoY6VPI498vEMNyTCcqN7O4N30Xkgkg1Vij77IH38f7iod0Hpx/LpBCxW/7N9DE+hkvnDBcSLpJpVwM43LFu44TWjqir4rIX7lHXmkHSashY2dEibkfr65SJzVFsRgrTeXI//yrfjfXUQ20la61i3XbGkalJlva34ukl9Vc7vz5giSzyoJEO8d1d8+7IVdRwIDAQAB"
      ]
    },
    {
      name = "mail1.criminalappealoffice.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "178.248.34.43"
      ]
    },
    {
      name = "mail1.criminalappealoffice.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "2022100614445019nl5f39osxxoy14p9la8sh5vxah0exxp0ime2mh0w4tu19egv"
      ]
    },
    {
      name = "cshrcasework.justice.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 CSHRCasework-justice-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "cshrcasework.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms66139249",
        "v=spf1 include:spf.protection.outlook.com -all",
        "google-site-verification=uRR2XrKfUfGdUn3CWNiZINvZRxOXkZAU6RYe7BGXO70",
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk;"
      ]
    },
    {
      name = "_dmarc.cshrcasework.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1; p=reject; pct=100; rua=mailto:dmarc-rua@dmarc.service.gov.uk;"
      ]
    },
    {
      name = "*._domainkey.cshrcasework.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p="
      ]
    },
    {
      name = "selector1._domainkey.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-CSHRCasework-justice-gov-uk._domainkey.MoJHRCasework.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-CSHRCasework-justice-gov-uk._domainkey.MoJHRCasework.onmicrosoft.com"
      ]
    },
    {
      name = "_sipfederationtls._tcp.cshrcasework.justice.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.cshrcasework.justice.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.cshrcasework.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "desktop.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "moj.fw-daas.com"
      ]
    },
    {
      name = "enterpriseenrollment.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "sip.cshrcasework.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "cshrcaseworkcma.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = false
        name                   = "dualstack.cshr-cma-prod-web-alb-01-698927512.eu-west-2.elb.amazonaws.com"
        zone_id                = "ZHURV8PSTC4K8"
      }
    },
    {
      name = "cshrcaseworkcma.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:amazonses.com -all"
      ]
    },
    {
      name = "_amazonses.cshrcaseworkcma.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "Mmb+MWTjhMO4uzDIGEDFfagJGpbbN7h8BqVpAbuUDPQ="
      ]
    },
    {
      name = "42qrvtxqjfjkvgvvuwhnbqmj6gjiimyp._domainkey.cshrcaseworkcma.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "42qrvtxqjfjkvgvvuwhnbqmj6gjiimyp.dkim.amazonses.com"
      ]
    },
    {
      name = "msarjwgs5uwlhhqophtayb5zsfzhkdiz._domainkey.cshrcaseworkcma.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "msarjwgs5uwlhhqophtayb5zsfzhkdiz.dkim.amazonses.com"
      ]
    },
    {
      name = "tbm6oiqakgjs7zp7ufy2w3dagkonfrry._domainkey.cshrcaseworkcma.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "tbm6oiqakgjs7zp7ufy2w3dagkonfrry.dkim.amazonses.com"
      ]
    },
    {
      name = "uat.cshrcaseworkcma.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = true
        name                   = "dualstack.cshr-cma-uat-web-alb-01-130925050.eu-west-2.elb.amazonaws.com"
        zone_id                = "ZHURV8PSTC4K8"
      }
    },
    {
      name = "uat.cshrcaseworkcma.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:amazonses.com -all"
      ]
    },
    {
      name = "_amazonses.uat.cshrcaseworkcma.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "uWgkqAaHV9lw72/zwF/qFViIJr2RNfyrY+ahs1SoOxc="
      ]
    },
    {
      name = "5axyevlb23jr5vn7z4uqemmr6llzuuy3._domainkey.uat.cshrcaseworkcma.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "5axyevlb23jr5vn7z4uqemmr6llzuuy3.dkim.amazonses.com"
      ]
    },
    {
      name = "oe3ypkjre4ra5oziwhkhas46xq7zomtm._domainkey.uat.cshrcaseworkcma.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "oe3ypkjre4ra5oziwhkhas46xq7zomtm.dkim.amazonses.com"
      ]
    },
    {
      name = "ul5ni2ujr4yk2y5txdb6rxzmj6ko3hw2._domainkey.uat.cshrcaseworkcma.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ul5ni2ujr4yk2y5txdb6rxzmj6ko3hw2.dkim.amazonses.com"
      ]
    },
    {
      name = "d1rs.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns1.uk.atos.net.",
        "ns2.uk.atos.net.",
        "ns3.uk.atos.net."
      ]
    },
    {
      name = "data.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-223.awsdns-27.com.",
        "ns-1660.awsdns-15.co.uk.",
        "ns-640.awsdns-16.net.",
        "ns-1352.awsdns-41.org."
      ]
    },
    {
      name = "design102.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "design102.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ip4:78.31.110.246  -all"
      ]
    },
    {
      name = "panacea-moj._domainkey.design102.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "Mojdkimkey.panacea-software.com"
      ]
    },
    {
      name = "dev.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "185.64.253.120"
      ]
    },
    {
      name = "devl.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1267.awsdns-30.org.",
        "ns-358.awsdns-44.com.",
        "ns-965.awsdns-56.net.",
        "ns-2037.awsdns-62.co.uk."
      ]
    },
    {
      name = "devl.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms94518993"
      ]
    },
    {
      name = "digital.justice.gov.uk."
      type = "NS"
      ttl  = 48600
      records = [
        "ns-284.awsdns-35.com.",
        "ns-527.awsdns-01.net.",
        "ns-1458.awsdns-54.org.",
        "ns-1776.awsdns-30.co.uk."
      ]
    },
    {
      name = "drs.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "62.208.154.185"
      ]
    },
    {
      name = "www.drs.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "62.208.154.185"
      ]
    },
    {
      name = "dzc.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.176.165"
      ]
    },
    {
      name = "dzc.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "C7ExaWUK"
      ]
    },
    {
      name = "enclave.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 enclave-justice-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "enclave.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "selector1._domainkey.enclave.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-enclave-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.enclave.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-enclave-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "enterpriseenrollment.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "enterpriseenrollment.manage.microsoft.com."
      ]
    },
    {
      name = "enterpriseregistration.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "enterpriseregistration.windows.net."
      ]
    },
    {
      name = "erupload.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "hmcts-heritage-prod.azurefd.net"
      ]
    },
    {
      name = "afdverify.erupload.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "afdverify.hmcts-heritage-prod.azurefd.net"
      ]
    },
    {
      name = "www.erupload.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "erupload.justice.gov.uk"
      ]
    },
    {
      name = "eruploadtest.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-heritage-stg.azurefd.net"
      ]
    },
    {
      name = "afdverify.eruploadtest.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "afdverify.hmcts-heritage-stg.azurefd.net"
      ]
    },
    {
      name = "www.eruploadtest.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-heritage-stg.azurefd.net"
      ]
    },
    {
      name = "esourcing.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "205.139.89.225"
      ]
    },
    {
      name = "www.esourcing.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "esourcing.justice.gov.uk."
      ]
    },
    {
      name = "fax.justice.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 fax-justice-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "fax.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=spf1 include:spf.protection.outlook.com ~all"
      ]
    },
    {
      name = "_dmarc.fax.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.fax.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-fax-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.fax.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-fax-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "autodiscover.fax.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com."
      ]
    },
    {
      name = "feeaccount.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "feeaccount.ito.unisys.com."
      ]
    },
    {
      name = "feeaccounttest.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "feeaccounttest.ito.unisys.com."
      ]
    },
    {
      name = "find-legal-advice.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.42.106"
      ]
    },
    {
      name = "find-legal-advice.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1022.awsdns-63.net.",
        "ns-2041.awsdns-63.co.uk.",
        "ns-1392.awsdns-46.org.",
        "ns-180.awsdns-22.com."
      ]
    },
    {
      name = "g.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-258.awsdns-32.com.",
        "ns-930.awsdns-52.net.",
        "ns-1437.awsdns-51.org.",
        "ns-2040.awsdns-63.co.uk."
      ]
    },
    {
      name = "google2d7e970fc70e33ba.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "google.com."
      ]
    },
    {
      name = "governance.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.92.125.236"
      ]
    },
    {
      name = "gs.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "1 ASPMX.L.GOOGLE.COM",
        "5 ALT1.ASPMX.L.GOOGLE.COM",
        "5 ALT2.ASPMX.L.GOOGLE.COM",
        "10 ALT3.ASPMX.L.GOOGLE.COM",
        "10 ALT4.ASPMX.L.GOOGLE.COM"
      ]
    },
    {
      name = "gs.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "google-site-verification=zTDywdx3jcS5WvIZ7jT1T7gXqfo7RPo3ZfLfJA_rIZQ"
      ]
    },
    {
      name = "_dmarc.gs.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "hmctscourtfinder.justice.gov.uk."
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "hmctsformfinder.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-458.awsdns-57.com.",
        "ns-575.awsdns-07.net.",
        "ns-1148.awsdns-15.org.",
        "ns-1594.awsdns-07.co.uk."
      ]
    },
    {
      name = "hmctssurvey.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "hmctssurvey.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 nclude:spf.ssmx.net ~all"
      ]
    },
    {
      name = "selector._domainkey.hmctssurvey.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "HMCTSDKIM.ssmx.net"
      ]
    },
    {
      name = "hmiprobationeforms.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "81.171.138.201"
      ]
    },
    {
      name = "hmpp-azdt.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-08.azure-dns.com.",
        "ns2-08.azure-dns.net.",
        "ns3-08.azure-dns.org.",
        "ns4-08.azure-dns.info."
      ]
    },
    {
      name = "hmppgw1.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns1-06.azure-dns.com.",
        "ns2-06.azure-dns.net.",
        "ns3-06.azure-dns.org.",
        "ns4-06.azure-dns.info."
      ]
    },
    {
      name = "hmppgw2.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns1-04.azure-dns.com.",
        "ns2-04.azure-dns.net.",
        "ns3-04.azure-dns.org.",
        "ns4-04.azure-dns.info."
      ]
    },
    {
      name = "hmpps-az-gw1.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-06.azure-dns.com.",
        "ns2-06.azure-dns.net.",
        "ns3-06.azure-dns.org.",
        "ns4-06.azure-dns.info."
      ]
    },
    {
      name = "www.ictcareers.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "193.113.14.4"
      ]
    },
    {
      name = "www.ictstaffcareers.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "193.113.14.69"
      ]
    },
    {
      name = "immigrationappealsonline.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-1040.awsdns-02.org.",
        "ns-1990.awsdns-56.co.uk.",
        "ns-345.awsdns-43.com.",
        "ns-682.awsdns-21.net.",
      ]
    },
    {
      name = "in-addr.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-968.awsdns-57.net.",
        "ns-1169.awsdns-18.org.",
        "ns-2038.awsdns-62.co.uk.",
        "ns-454.awsdns-56.com."
      ]
    },
    {
      name = "internalaudit.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.231.96.231"
      ]
    },
    {
      name = "internalaudit2.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.231.96.230"
      ]
    },
    {
      name = "intranet.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-63.awsdns-07.com.",
        "ns-913.awsdns-50.net.",
        "ns-1367.awsdns-42.org.",
        "ns-1689.awsdns-19.co.uk."
      ]
    },
    {
      name = "jobs.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = false
        name                   = "dualstack.justi-loadb-sq9lna0p02ao-206129886.eu-west-2.elb.amazonaws.com"
        zone_id                = "ZHURV8PSTC4K8"
      }
    },
    {
      name = "jobs.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=ajvfy_2DMm2yiEMIzFgwTFjZ_MjqGZ3_mIusMQS93sY"
      ]
    },
    {
      name = "_32e00677b9d5518d832c3dea41eb2222.jobs.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_4f02d2a3ed7c6bb1093897f47f79399d.mzlfeqexyx.acm-validations.aws."
      ]
    },
    {
      name = "s1._domainkey.jobs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s1.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.jobs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s2.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "em2023.jobs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "juror-bureau-nle.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "10.25.255.202"
      ]
    },
    {
      name = "juror-bureau.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "10.24.0.11"
      ]
    },
    {
      name = "juror-bureau.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-05.azure-dns.com",
        "ns2-05.azure-dns.net",
        "ns3-05.azure-dns.org",
        "ns4-05.azure-dns.info"
      ]
    },
    {
      name = "lawcommission.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "134.213.160.26"
      ]
    },
    {
      name = "www.lawcommission.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "134.213.160.26"
      ]
    },
    {
      name = "legacy.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.183"
      ]
    },
    {
      name = "legacy_cas_acp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.176.166"
      ]
    },
    {
      name = "legacy_cas_bpp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.182"
      ]
    },
    {
      name = "legal-aid-checker.justice.gov.uk."
      type = "NS"
      ttl  = 900
      records = [
        "ns-285.awsdns-35.com.",
        "ns-759.awsdns-30.net.",
        "ns-1095.awsdns-08.org.",
        "ns-1948.awsdns-51.co.uk."
      ]
    },
    {
      name = "legaladviserfinder.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "find-legal-advice.justice.gov.uk."
      ]
    },
    {
      name = "legalaidcalculator.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "legal-aid-checker.justice.gov.uk."
      ]
    },
    {
      name = "legalaidlearning.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "t12h.cloudlp.net"
      ]
    },
    {
      name = "legalaidtraining.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "lsc.ds.synergy-learning.com."
      ]
    },
    {
      name = "www.legalaidtraining.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "legalaidtraining.justice.gov.uk."
      ]
    },
    {
      name = "llrs.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-1134.awsdns-13.org",
        "ns-1732.awsdns-24.co.uk",
        "ns-242.awsdns-30.com",
        "ns-911.awsdns-49.net"
      ]
    },
    {
      name = "locateaprison.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "85.133.48.165"
      ]
    },
    {
      name = "rvc-pp.lrc.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.175"
      ]
    },
    {
      name = "rvc-pp1.lrc.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.176"
      ]
    },
    {
      name = "rvc-pp2.lrc.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.177"
      ]
    },
    {
      name = "rvc.lrc.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "213.121.161.117"
      ]
    },
    {
      name = "rvc1.lrc.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "213.121.161.118"
      ]
    },
    {
      name = "rvc2.lrc.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "213.121.161.119"
      ]
    },
    {
      name = "lyncdiscover.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "webdir.online.lync.com."
      ]
    },
    {
      name = "mail.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.182"
      ]
    },
    {
      name = "mail2.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "208.51.151.2"
      ]
    },
    {
      name = "makeaplea.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-427.awsdns-53.com.",
        "ns-895.awsdns-47.net.",
        "ns-1074.awsdns-06.org.",
        "ns-1720.awsdns-23.co.uk."
      ]
    },
    {
      name = "mal01.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.27.17.254"
      ]
    },
    {
      name = "mal03.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.59.62.70"
      ]
    },
    {
      name = "mappa.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "31.25.189.126"
      ]
    },
    {
      name = "mappa.justice.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "5 mail.hosting.inovem.com."
      ]
    },
    {
      name = "mappa.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ~all"
      ]
    },
    {
      name = "_dmarc.mappa.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_smtp._tls.mappa.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "www.mappa.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "mappa.justice.gov.uk."
      ]
    },
    {
      name = "markuppp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.179"
      ]
    },
    {
      name = "www.markuppp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "83.151.216.179"
      ]
    },
    {
      name = "mcnotify.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "hmcts-live-ext.azurefd.net"
      ]
    },
    {
      name = "mctest.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.59.75.157"
      ]
    },
    {
      name = "mercuryforms.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "10.40.42.15"
      ]
    },
    {
      name = "mliveconfig.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "10.40.55.11"
      ]
    },
    {
      name = "mliveintel.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "10.40.55.12"
      ]
    },
    {
      name = "mlivemid.justice.gov.uk."
      type = "A"
      ttl  = 602
      records = [
        "10.40.55.13"
      ]
    },
    {
      name = "mppconfig.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "10.40.54.12"
      ]
    },
    {
      name = "mppintel.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "10.40.54.13"
      ]
    },
    {
      name = "mppmid.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "10.40.54.14"
      ]
    },
    {
      name = "mrs.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.182"
      ]
    },
    {
      name = "mrs1.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.131"
      ]
    },
    {
      name = "mrs2.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.176.142"
      ]
    },
    {
      name = "mrs3.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.177.133"
      ]
    },
    {
      name = "mrs4.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "157.203.176.143"
      ]
    },
    {
      name = "msoid.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "clientconfig.microsoftonline-p.net."
      ]
    },
    {
      name = "nac.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-2001.awsdns-58.co.uk.",
        "ns-1446.awsdns-52.org.",
        "ns-543.awsdns-03.net.",
        "ns-57.awsdns-07.com."
      ]
    },
    {
      name = "dev.nac.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-508.awsdns-63.com.",
        "ns-722.awsdns-26.net.",
        "ns-1116.awsdns-11.org.",
        "ns-1793.awsdns-32.co.uk."
      ]
    },
    {
      name = "prep.nac.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1494.awsdns-58.org.",
        "ns-400.awsdns-50.com.",
        "ns-779.awsdns-33.net.",
        "ns-1610.awsdns-09.co.uk."
      ]
    },
    {
      name = "network.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "reserverd for internal use"
      ]
    },
    {
      name = "nicts.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 nicts-justice-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "nicts.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "selector1._domainkey.nicts.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-nicts-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.nicts.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-nicts-justice-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "llrs.nle.justice.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "195.59.75.138"
      ]
    },
    {
      name = "nomisqc.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1849.awsdns-39.co.uk.",
        "ns-486.awsdns-60.com.",
        "ns-960.awsdns-56.net.",
        "ns-1464.awsdns-55.org."
      ]
    },
    {
      name = "qc10.nomisqc.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "nomisqc.justice.gov.uk."
      ]
    },
    {
      name = "noms.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "noms.homeoffice.gov.uk."
      ]
    },
    {
      name = "www.noms.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "www.noms.homeoffice.gov.uk."
      ]
    },
    {
      name = "noreply.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 justice-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "noreply.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32 ip4:194.33.192.201/32 ip4:194.33.192.202/32 ip4:194.33.196.201/32 ip4:194.33.196.202/32 ip4:195.59.75.140/32 ip4:195.59.75.12/32 -all"
      ]
    },
    {
      name = "_dmarc.noreply.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "fp01._domainkey.noreply.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB\\;"
      ]
    },
    {
      name = "old.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "www.justice.gov.uk."
      ]
    },
    {
      name = "one3one.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bouncer-cdn.production.govuk.service.gov.uk"
      ]
    },
    {
      name = "www.one3one.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bouncer-cdn.production.govuk.service.gov.uk"
      ]
    },
    {
      name = "open.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bouncer-cdn.production.govuk.service.gov.uk"
      ]
    },
    {
      name = "www.open.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bouncer-cdn.production.govuk.service.gov.uk"
      ]
    },
    {
      name = "optic.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 optic-justice-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "optic.justice.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "amazonses:brpgA+nYWbeXbq05BWkw0znt7qzeOXcRRork8ZaTJlQ=",
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    },
    {
      name = "_amazonses.optic.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "brpgA+nYWbeXbq05BWkw0znt7qzeOXcRRork8ZaTJlQ="
      ]
    },
    {
      name = "4wlxo7xgsbccmlyejcjro4pldynv4jnc._domainkey.optic.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "4wlxo7xgsbccmlyejcjro4pldynv4jnc.dkim.amazonses.com"
      ]
    },
    {
      name = "lgs2yxnfgsgfui3txt56yfesyxxqhlxv._domainkey.optic.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "lgs2yxnfgsgfui3txt56yfesyxxqhlxv.dkim.amazonses.com"
      ]
    },
    {
      name = "mf4qadk67hcip4pdicehyqyx3fabzjg7._domainkey.optic.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mf4qadk67hcip4pdicehyqyx3fabzjg7.dkim.amazonses.com"
      ]
    },
    {
      name = "pcnotify.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-live-ext.azurefd.net"
      ]
    },
    {
      name = "afdverify.pcnotify.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.hmcts-live-ext.azurefd.net"
      ]
    },
    {
      name = "pctest.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.59.75.156"
      ]
    },
    {
      name = "pleuralplaques.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "213.123.61.54"
      ]
    },
    {
      name = "ppud.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "216.35.235.66"
      ]
    },
    {
      name = "internaltest.ppud.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = false
        name = "ppud-alb-1480909259.eu-west-2.elb.amazonaws.com"
        zone_id = "ZHURV8PSTC4K8"
      }
    },
    {
      name = "training.ppud.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.247.2.120"
      ]
    },
    {
      name = "uat.ppud.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.247.2.120"
      ]
    },
    {
      name = "wam.ppud.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "216.35.235.66"
      ]
    },
    {
      name = "waminternaltest.ppud.justice.gov.uk."
      type = "A"
      alias = {
        evaluate_target_health = false
        name                   = "wam-alb-dev-561040821.eu-west-2.elb.amazonaws.com"
        zone_id                = "ZHURV8PSTC4K8"
     }
    },
    {
      name = "wamuat.ppud.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "216.35.235.67"
      ]
    },
    {
      name = "www.ppud.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.247.2.115"
      ]
    },
    {
      name = "email.ppud.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "13.42.91.90"
      ]
    },
    {
      name = "secure-email.ppud.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "3.11.130.215"
      ]
    },
    {
      name = "pre-recorded-evidence.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-02.azure-dns.com.",
        "ns2-02.azure-dns.net.",
        "ns3-02.azure-dns.org.",
        "ns4-02.azure-dns.info."
      ]
    },
    {
      name = "probation.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "probation.homeoffice.gov.uk."
      ]
    },
    {
      name = "www.probation.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "www.probation.homeoffice.gov.uk."
      ]
    },
    {
      name = "procurement.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "85.133.48.156"
      ]
    },
    {
      name = "producttracker.justice.gov.uk."
      type = "NS"
      ttl  = 43200
      records = [
        "ns-58.awsdns-07.com.",
        "ns-597.awsdns-10.net.",
        "ns-1422.awsdns-49.org.",
        "ns-2000.awsdns-58.co.uk."
      ]
    },
    {
      name = "sbc1.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "194.74.1.27"
      ]
    },
    {
      name = "sbc2.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "194.73.190.251"
      ]
    },
    {
      name = "sdt.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "firewall-prod-int-palo-sdtprod.uksouth.cloudapp.azure.com"
      ]
    },
    {
      name = "commissioning.sdt.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "firewall-prod-int-palo-sdtcommprod.uksouth.cloudapp.azure.com"
      ]
    },
    {
      name = "sendmoneytoaprisoner.justice.gov.uk."
      type = "NS"
      ttl  = 3600
      records = [
        "ns-1741.awsdns-25.co.uk.",
        "ns-277.awsdns-34.com.",
        "ns-711.awsdns-24.net.",
        "ns-1308.awsdns-35.org."
      ]
    },
    {
      name = "sentencing.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.42.110"
      ]
    },
    {
      name = "www.sentencing.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.42.110"
      ]
    },
    {
      name = "service.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-187.awsdns-23.com.",
        "ns-978.awsdns-58.net.",
        "ns-1389.awsdns-45.org.",
        "ns-1621.awsdns-10.co.uk."
      ]
    },
    {
      name = "sip.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "sipdir.online.lync.com."
      ]
    },
    {
      name = "smtp.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "194.33.196.8",
        "194.33.192.8"
      ]
    },
    {
      name = "smtp01.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "194.33.192.201"
      ]
    },
    {
      name = "smtp02.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "194.33.192.202"
      ]
    },
    {
      name = "smtp03.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "194.33.196.201"
      ]
    },
    {
      name = "smtp04.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "194.33.196.202"
      ]
    },
    {
      name = "srs0001.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "62.205.109.201"
      ]
    },
    {
      name = "srs0002.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "62.205.109.203"
      ]
    },
    {
      name = "srs0003.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.137.36.233"
      ]
    },
    {
      name = "srs0004.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.137.36.234"
      ]
    },
    {
      name = "sts.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns1.uk.atos.net.",
        "ns2.uk.atos.net.",
        "ns3.uk.atos.net."
      ]
    },
    {
      name = "test.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-590.awsdns-09.net.",
        "ns-455.awsdns-56.com.",
        "ns-1893.awsdns-44.co.uk.",
        "ns-1433.awsdns-51.org."
      ]
    },
    {
      name = "smtp.test.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "195.59.75.12",
        "195.59.75.140"
      ]
    },
    {
      name = "uatclaonlineadvice.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "81.105.223.243"
      ]
    },
    {
      name = "www.uatclaonlineadvice.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "81.105.223.243"
      ]
    },
    {
      name = "_h323cs._tcp.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 1720 px01.video.justice.gov.uk",
        "10 10 1720 px02.video.justice.gov.uk"
      ]
    },
    {
      name = "_pexapp._tcp.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 443 px01.video.justice.gov.uk",
        "10 10 443 px02.video.justice.gov.uk"
      ]
    },
    {
      name = "_sip._tcp.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 5060 px01.video.justice.gov.uk",
        "10 10 5060 px02.video.justice.gov.uk"
      ]
    },
    {
      name = "_sipfederationtls._tcp.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 5061 sip.video.justice.gov.uk"
      ]
    },
    {
      name = "_sips._tcp.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 5061 px01.video.justice.gov.uk",
        "10 10 5061 px02.video.justice.gov.uk"
      ]
    },
    {
      name = "_h323ls._udp.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 1719 px01.video.justice.gov.uk",
        "10 10 1719 px02.video.justice.gov.uk"
      ]
    },
    {
      name = "_h323rs._udp.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 1719 px01.video.justice.gov.uk",
        "10 10 1719 px02.video.justice.gov.uk"
      ]
    },
    {
      name = "meet.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.120.206"
      ]
    },
    {
      name = "_h323cs._tcp.meet.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 1720 px01.meet.video.justice.gov.uk",
        "10 10 1720 px02.meet.video.justice.gov.uk"
      ]
    },
    {
      name = "_pexapp._tcp.meet.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 443 px01.meet.video.justice.gov.uk",
        "10 10 443 px02.meet.video.justice.gov.uk"
      ]
    },
    {
      name = "_sip._tcp.meet.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 5060 px01.meet.video.justice.gov.uk",
        "10 10 5060 px02.meet.video.justice.gov.uk"
      ]
    },
    {
      name = "_sipfederationtls._tcp.meet.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 5061 sip.meet.video.justice.gov.uk"
      ]
    },
    {
      name = "_sips._tcp.meet.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 5061 px01.meet.video.justice.gov.uk",
        "10 10 5061 px02.meet.video.justice.gov.uk"
      ]
    },
    {
      name = "_h323ls._udp.meet.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 1719 px01.meet.video.justice.gov.uk",
        "10 10 1719 px02.meet.video.justice.gov.uk"
      ]
    },
    {
      name = "_h323rs._udp.meet.video.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 10 1719 px01.meet.video.justice.gov.uk",
        "10 10 1719 px02.meet.video.justice.gov.u"
      ]
    },
    {
      name = "join.meet.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.120.206"
      ]
    },
    {
      name = "px01.meet.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.64.24"
      ]
    },
    {
      name = "px02.meet.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.125.146"
      ]
    },
    {
      name = "sip.meet.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.64.24",
        "35.246.125.146"
      ]
    },
    {
      name = "px01.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.26.18"
      ]
    },
    {
      name = "px02.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.61.112"
      ]
    },
    {
      name = "sip.video.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.246.26.18",
        "35.246.61.112"
      ]
    },
    {
      name = "videoportal.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "10.171.6.59",
        "10.172.6.59"
      ]
    },
    {
      name = "vpn.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1088.awsdns-08.org.",
        "ns-388.awsdns-48.com.",
        "ns-1588.awsdns-06.co.uk.",
        "ns-667.awsdns-19.net."
      ]
    },
    {
      name = "webchat.justice.gov.uk."
      type = "NS"
      ttl  = 900
      records = [
        "ns-25.awsdns-03.com.",
        "ns-787.awsdns-34.net.",
        "ns-1467.awsdns-55.org.",
        "ns-1741.awsdns-25.co.uk."
      ]
    },
    {
      name = "www.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "185.64.253.120"
      ]
    },
    {
      name = "_acme-challenge.www.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "tz6w9gwqaey5j0h4oq.fastly-validations.com"
      ]
    },
    {
      name = "_github-challenge-ministryofjustice.www.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "80b1cb80e6"
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.www.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "a75165038c"
      ]
    },
    {
      name = "xhibit.justice.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-5.awsdns-00.com.",
        "ns-632.awsdns-15.net.",
        "ns-1197.awsdns-21.org.",
        "ns-1755.awsdns-27.co.uk."
      ]
    },
    {
      name = "ybtj.justice.gov.uk."
      type = "NS"
      ttl  = 900
      records = [
        "ns-126.awsdns-15.com.",
        "ns-695.awsdns-22.net.",
        "ns-1434.awsdns-51.org.",
        "ns-1894.awsdns-44.co.uk."
      ]
    },
    {
      name = "yjaf-smtp.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 feedback-smtp.eu-west-2.amazonses.com"
      ]
    },
    {
      name = "yjaf-smtp.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:amazonses.com -all"
      ]
    },
    {
      name = "yjbpublications.justice.gov.uk."
      type = "NS"
      ttl  = 900
      records = [
        "ns-247.awsdns-30.com.",
        "ns-536.awsdns-03.net.",
        "ns-1481.awsdns-57.org.",
        "ns-1881.awsdns-43.co.uk."
      ]
    },
    {
      name = "yjils.justice.gov.uk."
      type = "NS"
      ttl  = 900
      records = [
        "ns-294.awsdns-36.com.",
        "ns-526.awsdns-01.net.",
        "ns-1509.awsdns-60.org.",
        "ns-1777.awsdns-30.co.uk."
      ]
    }
  ]
}

moved {
  from = module.justice_gov_uk.aws_route53_record.default
  to   = module.justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.justice_gov_uk.aws_route53_zone.default
  to   = module.justice_gov_uk_zone.aws_route53_zone.this
}
