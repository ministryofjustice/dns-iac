module "hmiprobation_gov_uk" {
  source = "./modules/route53"

  domain      = "hmiprobation.gov.uk"
  description = "Incl. Office 365 DNS records"

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
      type = "TXT"
      ttl  = 3600
      records = [
        "MS=ms46824931",
        "v=spf1 include:_spf.mlsend.com ip4:194.33.196.8/32 ip4:194.33.192.8/32 include:spf.protection.outlook.com -all"
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
      name = "sip.hmiprobation.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
