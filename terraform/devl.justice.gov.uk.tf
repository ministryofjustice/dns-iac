module "devl_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "devl.justice.gov.uk."

  tags = {
  }
}

module "devl_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.devl_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "devl.justice.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 devl-justice-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "devl.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1267.awsdns-30.org.", 
        "ns-358.awsdns-44.com.", 
        "ns-965.awsdns-56.net.", 
        "ns-2037.awsdns-62.co.uk."
      ]
    }, 
    {
      name = "devl.justice.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1267.awsdns-30.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "devl.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=spf1 include:spf.protection.outlook.com -all"
      ]
    }, 
    {
      name = "_mta-sts.devl.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=4adfca9f114c6d7c82119b69fa97fece"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.devl.justice.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com."
      ]
    }, 
    {
      name = "_sip._tls.devl.justice.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com."
      ]
    }, 
    {
      name = "_smtp._tls.devl.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "autodiscover.devl.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "enterpriseenrollment.devl.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.devl.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "lyncdiscover.devl.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "mta-sts.devl.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d1k9a5875p40im.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_735b486553cdfa713eebbd5f2ff3d69b.mta-sts.devl.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_833c8f7f3f503c6a395a44088dab4250.kgnrpmcdhl.acm-validations.aws."
      ]
    }, 
    {
      name = "sip.devl.justice.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }
  ]
}