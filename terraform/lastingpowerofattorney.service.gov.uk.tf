module "lastingpowerofattorney_service_gov_uk" {
  source = "./modules/route53"

  domain      = "lastingpowerofattorney.service.gov.uk"
  description = ""

  records = [
    {
      name = "lastingpowerofattorney.service.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "185.40.8.196"
      ]
    },
    {
      name = "lastingpowerofattorney.service.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 mx.sendgrid.net"
      ]
    },
    {
      name = "lastingpowerofattorney.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-572.awsdns-07.net.",
        "ns-459.awsdns-57.com.",
        "ns-1733.awsdns-24.co.uk.",
        "ns-1295.awsdns-33.org."
      ]
    },
    {
      name = "lastingpowerofattorney.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "_dmarc.lastingpowerofattorney.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1; p=none; rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:cbvnvftj@ag.dmarcian-eu.com; ruf=mailto:cbvnvftj@fr.dmarcian-eu.com;"
      ]
    },
    {
      name = "smtpapi._domainkey.lastingpowerofattorney.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "aws.lastingpowerofattorney.service.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-943.awsdns-53.net.",
        "ns-1385.awsdns-45.org.",
        "ns-1771.awsdns-29.co.uk.",
        "ns-44.awsdns-05.com."
      ]
    },
    {
      name = "email.lastingpowerofattorney.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.email.lastingpowerofattorney.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "o1.email.lastingpowerofattorney.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "198.21.4.244"
      ]
    },
    {
      name = "f0ac7be478b9e836e79dbed394d5d9e4.lastingpowerofattorney.service.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "518D77884DC724EB168996D20CFD89DFF41DC715.comodoca.com."
      ]
    },
    {
      name = "www.lastingpowerofattorney.service.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "185.40.8.196"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
