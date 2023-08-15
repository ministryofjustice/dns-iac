module "hmiprobation_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "hmiprobation.gov.uk."
  description = "Incl. Office 365 DNS records"

  tags = {
    component = "None"
  }
}

module "hmiprobation_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.hmiprobation_gov_uk_zone.zone_id

  records = [
    {
      name = "hmiprobation.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 hmiprobation-gov-uk.mail.protection.outlook.com"
      ]
    }, 
    {
      name = "hmiprobation.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-451.awsdns-56.com.", 
        "ns-1148.awsdns-15.org.", 
        "ns-741.awsdns-28.net.", 
        "ns-1753.awsdns-27.co.uk."
      ]
    }, 
    {
      name = "hmiprobation.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-451.awsdns-56.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "hmiprobation.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms46824931", 
        "v=spf1 include:_spf.mlsend.com ip4:194.33.196.8/32 ip4:194.33.192.8/32 include:spf.protection.outlook.com -all", 
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby"
      ]
    }, 
    {
      name = "_asvdns-4b300764-2cd2-4c28-b11f-029afd9d7a06.hmiprobation.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_c737c6f9-6e05-4bd7-8490-be6d7c80cc00"
      ]
    }, 
    {
      name = "_dmarc.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    }, 
    {
      name = "fp01._domainkey.hmiprobation.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCN/Dnp6gO1PJVQgLljNpkkvVUH/G04C2QkC28j8ddX13V7MAvDWpCxnUfTPy8C27njUImSa8b2TwyeA0P2ONPHQhW652tSxZa0+VT2b5qRFhne3UigZEeKhix988mhlOTO+6PN4+JR7MPXSeE0iGGPWm8m4JsxeaVvwN0XC92yvQIDAQAB\\;"
      ]
    }, 
    {
      name = "ml._domainkey.hmiprobation.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD4npiCt3gIjHVhjWttrcobykb4QYy7B/zJnkIYaDcvtAWcLcRF9xKKNZMv9sqTwrH3j5YXJQpMTpFcGVfPd66ncLI3U4Iet/Kc5QSCXQH5J5S1IvOGiMjBGNmKqjQghUeidiIw1IKYJNrwgIjdkNzaDa2Om1uXYr7Bj+P+qUSxewIDAQAB"
      ]
    }, 
    {
      name = "selector1._domainkey.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-hmiprobation-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "selector2._domainkey.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-hmiprobation-gov-uk._domainkey.JusticeUK.onmicrosoft.com"
      ]
    }, 
    {
      name = "_mta-sts.hmiprobation.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=a1f3eda4db6d3e19a92f6cb5879a4298"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.hmiprobation.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    }, 
    {
      name = "_sip._tls.hmiprobation.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    }, 
    {
      name = "_smtp._tls.hmiprobation.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "autodiscover.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    }, 
    {
      name = "enterpriseenrollment.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    }, 
    {
      name = "enterpriseregistration.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    }, 
    {
      name = "lyncdiscover.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    }, 
    {
      name = "msoid.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    }, 
    {
      name = "mta-sts.hmiprobation.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d1ijlypdgxf672.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_90a26ed25d4dc817fe7ddb874d5fc26c.mta-sts.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_2a4fab736f1ea1982d558f009c45d3da.rdnyqppgxp.acm-validations.aws."
      ]
    }, 
    {
      name = "sip.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }
  ]
}