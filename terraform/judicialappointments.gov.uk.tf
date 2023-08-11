module "judicialappointments_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "judicialappointments.gov.uk."
  description = "Incl. Office 365 DNS records"

  tags = {
    component = "None"
  }
}

module "judicialappointments_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.judicialappointments_gov_uk_zone.zone_id

  records = [
    {
      name = "judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "192.0.78.141", 
        "192.0.78.225"
      ]
    }, 
    {
      name = "judicialappointments.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 Judicialappointments-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "judicialappointments.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-798.awsdns-35.net.", 
        "ns-1222.awsdns-24.org.", 
        "ns-1621.awsdns-10.co.uk.", 
        "ns-188.awsdns-23.com."
      ]
    }, 
    {
      name = "judicialappointments.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-798.awsdns-35.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "judicialappointments.gov.uk."
      type = "SPF"
      ttl  = 300
      records = [
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all"
      ]
    }, 
    {
      name = "judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms55245335", 
        "v=spf1 ip4:194.33.196.8/32 ip4:194.33.192.8/32  include:spf.protection.outlook.com -all", 
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby"
      ]
    }, 
    {
      name = "_asvdns-dbc20bcc-93bd-4de9-a347-c6f3ee0fe0cb.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_c3033785-ef9f-432b-ae81-93d0b6eaac0e"
      ]
    }, 
    {
      name = "_dmarc.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    }, 
    {
      name = "fp01._domainkey.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB;"
      ]
    }, 
    {
      name = "selector1._domainkey.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-Judicialappointments-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "selector2._domainkey.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-Judicialappointments-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "_github-challenge-moj-analytical-services.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "f19c18b5ab"
      ]
    }, 
    {
      name = "_mta-sts.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=c7d26af1a5ba18e6d7e8dcfb2e1f67ef"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.judicialappointments.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    }, 
    {
      name = "_sip._tls.judicialappointments.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    }, 
    {
      name = "_smtp._tls.judicialappointments.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "archive.judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "185.40.8.148"
      ]
    }, 
    {
      name = "www.archive.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "archive.judicialappointments.gov.uk"
      ]
    }, 
    {
      name = "autodiscover.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "enterpriseenrollment.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "jars.judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "185.40.8.147"
      ]
    }, 
    {
      name = "lyncdiscover.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "msoid.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    }, 
    {
      name = "mta-sts.judicialappointments.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "dopvhi9dsi04k.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_6351f8e182881f77d161743e5cf255f9.mta-sts.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_4292f047d8178ad0c173fcae7c96e32c.rdnyqppgxp.acm-validations.aws."
      ]
    }, 
    {
      name = "sip.judicialappointments.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }, 
    {
      name = "www.judicialappointments.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "192.0.78.141", 
        "192.0.78.225"
      ]
    }
  ]
}