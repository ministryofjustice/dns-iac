module "digital_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "digital.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "digital_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.digital_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "digital.justice.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "1 ASPMX.L.GOOGLE.COM.",
        "5 ALT1.ASPMX.L.GOOGLE.COM.",
        "5 ALT2.ASPMX.L.GOOGLE.COM.",
        "10 ASPMX2.GOOGLEMAIL.COM.",
        "10 ASPMX3.GOOGLEMAIL.COM."
      ]
    },
    {
      name = "digital.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1776.awsdns-30.co.uk.",
        "ns-527.awsdns-01.net.",
        "ns-1458.awsdns-54.org.",
        "ns-284.awsdns-35.com."
      ]
    },
    {
      name = "digital.justice.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1776.awsdns-30.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:_spf.google.com include:mail.zendesk.com include:sendgrid.net include:amazonses.com include:spf.protection.outlook.com include:spf.messagelabs.com ip4:54.194.156.23 ~all",
        "teamviewer-sso-verification=a32cc5b325ca4b98ad15a722ebd63437",
        "apple-domain-verification=epvXUESI7W7LtOr4",
        "miro-verification=9f7733fab8b41c5d9bbbf63c043f10dcfec77dab",
        "docker-verification=d0dc08c9-6fa5-4dcf-921e-140e1e3dbc1f"
      ]
    },
    {
      name = "_amazonses.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "T7nQBpTxkkCBCwuvDRmC4BcVq+ZGK2zvMvQx3W2mqsU=",
        "BocAhooUg8CtAcH/ORD2uaDqPoOslbc/UKDP4/m0mvw="
      ]
    },
    {
      name = "_dmarc.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@digital.justice.gov.uk;"
      ]
    },
    {
      name = "legalservices.gov.uk._report._dmarc.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 36000
      records = [
        "v=DMARC1"
      ]
    },
    {
      name = "email.prisonvisits.service.gov.uk._report._dmarc.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1"
      ]
    },
    {
      name = "6vme3s556zqhosnlbiu452qmnd7g2zi3._domainkey.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "6vme3s556zqhosnlbiu452qmnd7g2zi3.dkim.amazonses.com"
      ]
    },
    {
      name = "google._domainkey.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC1snHP8lvv0mZX79qVzSnboSIqgO9B9+K2l7vdCtziZ9MiyFhOQr+jNwFA3DAfl+Lw3/8KhLyxWI7+kK5aYZrle9ugWQPKqOGhs/17vH4Ow5LNFmtwpJMWIfO6HwqhQxSQSBsIoy45+ZeDK1cD4YBFYpTu4tfeWW2BLlz/alB+PwIDAQAB"
      ]
    },
    {
      name = "kcoairnvt3bxowqhgigzmhzeaf3pkpsr._domainkey.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "kcoairnvt3bxowqhgigzmhzeaf3pkpsr.dkim.amazonses.com"
      ]
    },
    {
      name = "mqhkirtwekobe7x4elyjxb76h2hjdhfs._domainkey.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "mqhkirtwekobe7x4elyjxb76h2hjdhfs.dkim.amazonses.com"
      ]
    },
    {
      name = "selector1._domainkey.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-digital-justice-gov-uk._domainkey.asperitas.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-digital-justice-gov-uk._domainkey.asperitas.onmicrosoft.com"
      ]
    },
    {
      name = "zendesk1._domainkey.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "zendesk1._domainkey.zendesk.com"
      ]
    },
    {
      name = "zendesk2._domainkey.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "zendesk2._domainkey.zendesk.com"
      ]
    },
    {
      name = "_github-challenge-ministryofjustice.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "0760ede27c"
      ]
    },
    {
      name = "_github-challenge-moj-analytical-services.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "7c40543dec"
      ]
    },
    {
      name = "_imaps._tcp.digital.justice.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "0 0 993 imap.gmail.com."
      ]
    },
    {
      name = "_pop3s._tcp.digital.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "10 0 995 pop.gmail.com."
      ]
    },
    {
      name = "_smtp._tcp.digital.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "0 0 25 smtp.gmail.com."
      ]
    },
    {
      name = "_submission._tcp.digital.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "0 0 587 smtp.gmail.com."
      ]
    },
    {
      name = "_smtp._tls.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "jim1.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.177.142.183"
      ]
    },
    {
      name = "jim2.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "35.177.188.190"
      ]
    },
    {
      name = "lyncdiscover.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "mam.mobile.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "157.203.177.161"
      ]
    },
    {
      name = "mampp.mobile.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "157.203.177.164"
      ]
    },
    {
      name = "mdm.mobile.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "157.203.177.162"
      ]
    },
    {
      name = "mdmpp.mobile.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "157.203.177.165"
      ]
    },
    {
      name = "sf.mobile.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "157.203.177.163"
      ]
    },
    {
      name = "sfpp.mobile.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "157.203.177.166"
      ]
    },
    {
      name = "msoid.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "pki.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "pki.digital.justice.gov.uk.s3-website.eu-west-2.amazonaws.com"
      ]
    },
    {
      name = "proxy.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "proxywaf.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 5
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "psn.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "8.8.8.8"
      ]
    },
    {
      name = "sso.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "moj-admin.okta-emea.com"
      ]
    },
    {
      name = "temp.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "test.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "18.130.205.7"
      ]
    },
    {
      name = "test.digital.justice.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "1 aspmx.l.google.com.",
        "5 alt1.aspmx.l.google.com.",
        "5 alt2.aspmx.l.google.com.",
        "10 alt3.aspmx.l.google.com.",
        "10 alt4.aspmx.l.google.com."
      ]
    },
    {
      name = "test.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "MS=ms29740004",
        "v=spf1 include:spf.protection.outlook.com include:_spf.google.com ip4:18.130.205.7 ~all",
        "google-site-verification=eKrQOC2iPS1lEVnT_dPfGq4GGfEiWkICwBIQKDMK24s",
        "GFTBshQ/pI5XCTq5DxCKe9CZzVNocf4/9yYGIcqmLJKHduGUWltgiAack/3zTznC1VsFu0poNqbwPWZoZUIDuQ=="
      ]
    },
    {
      name = "_dmarc.test.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=DMARC1;p=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "google._domainkey.test.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCQyKMZ9GXNVq2wdHvjpDoQaiOc9OUoXUc/uqToKO+d+7IGoPDF3QVvoTNQ2Xw5nGHu/6Obstl+7yCJS4YiCD0MwtrQINwd7L3Ky2FxjQRs4NXeg8gNgReGET5NrVRDCjBS4ELBnBcq9/Zlexe9bkw46VPl6tdfSPqsydlWhwRbzQIDAQAB"
      ]
    },
    {
      name = "selector1._domainkey.test.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "selector1-test-digital-justice-gov-uk._domainkey.testasperitas.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.test.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "selector2-test-digital-justice-gov-uk._domainkey.testasperitas.onmicrosoft.com"
      ]
    },
    {
      name = "_sip._tls.test.digital.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "autodiscover.test.digital.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "18.130.205.7"
      ]
    },
    {
      name = "enterpriseenrollment.test.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseenrollment.manage.microsoft.com."
      ]
    },
    {
      name = "enterpriseregistration.test.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseregistration.windows.net."
      ]
    },
    {
      name = "g.test.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "18.130.201.170"
      ]
    },
    {
      name = "g.test.digital.justice.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "1 ASPMX.L.GOOGLE.COM.",
        "5 ALT1.ASPMX.L.GOOGLE.COM.",
        "5 ALT2.ASPMX.L.GOOGLE.COM.",
        "10 ASPMX2.GOOGLEMAIL.COM.",
        "10 ASPMX3.GOOGLEMAIL.COM."
      ]
    },
    {
      name = "g.test.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.protection.outlook.com include:_spf.google.com ip4:18.130.205.7 ~all"
      ]
    },
    {
      name = "autodiscover.g.test.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "18.130.201.170"
      ]
    },
    {
      name = "gsi.test.digital.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "gsi.test.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "auZnAusRNbOx1OFTpjE5EYTgjG76iK7qhmhEqcm6Jg/6S9nXJ7HntCo8S8X0G9+Q0BjdYyWuzw4n40UU2CgH0w==",
        "v=spf1 ip4:18.130.205.7 ~all"
      ]
    },
    {
      name = "mail.test.digital.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "18.130.205.7"
      ]
    },
    {
      name = "sip.test.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sipdir.online.lync.com."
      ]
    },
    {
      name = "_sipfederationtls.tcp.test.digital.justice.gov.uk."
      type = "SRV"
      ttl  = 300
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "zendesk1.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mail1.zendesk.com"
      ]
    },
    {
      name = "zendesk2.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mail2.zendesk.com"
      ]
    },
    {
      name = "zendesk3.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mail3.zendesk.com"
      ]
    },
    {
      name = "zendesk4.digital.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mail4.zendesk.com"
      ]
    },
    {
      name = "zendeskverification.digital.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "4586ec2907be3a62"
      ]
    }
  ]
}

moved {
  from = module.digital_justice_gov_uk.aws_route53_record.default
  to   = module.digital_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.digital_justice_gov_uk.aws_route53_zone.default
  to   = module.digital_justice_gov_uk_zone.aws_route53_zone.this
}
