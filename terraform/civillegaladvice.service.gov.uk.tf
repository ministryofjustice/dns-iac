module "civillegaladvice_service_gov_uk" {
  source = "./modules/route53"

  domain      = "civillegaladvice.service.gov.uk"
  description = ""

  records = [
    {
      name = "civillegaladvice.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-501.awsdns-62.com.",
        "ns-640.awsdns-16.net.",
        "ns-1135.awsdns-13.org.",
        "ns-1809.awsdns-34.co.uk."
      ]
    },
    {
      name = "civillegaladvice.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "0b6faaacd63ca4518fb6e74af2618e07.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "551D3A33D1CAAFB524ABC83466B24BCA57F68C26.comodoca.com."
      ]
    },
    {
      name = "_dmarc.civillegaladvice.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
    {
      name = "smtpapi._domainkey.civillegaladvice.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "cases.civillegaladvice.service.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1514.awsdns-61.org.",
        "ns-1003.awsdns-61.net.",
        "ns-1691.awsdns-19.co.uk.",
        "ns-237.awsdns-29.com."
      ]
    },
    {
      name = "_0f4a314921413bc63301bd822fae7e95.cases.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "DD4EC4BAB27D4D3D15DEC8FBF6E6B19A.C20092BD7B5C33D1FEC5EBF96CE9036D.d0741765bc4b0480823a.comodoca.com."
      ]
    },
    {
      name = "_2470b14a919a1ec7342a7ec89734ffef.cases.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "3A5DC212EBBD5E36454930ACD2DE7640.2B658224E3E2C9FFB6F12A1A800EAF8B.comodoca.com"
      ]
    },
    {
      name = "_a1fd4d292d772692a54d0137560e3592.cases.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_d786b333b4660a3e4a1733a220b4d292.acm-validations.aws."
      ]
    },
    {
      name = "_d0f7e3842148a577c24b6ee653170f99.cases.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "69B4ADC2CC50B858F922115395E81692.4C08800806EC177583E3E8A11C82E96D.4b0c6b58fb9b42eaace2.comodoca.com."
      ]
    },
    {
      name = "b076bad7eb2b199d0621d9a215435171.cases.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "6BCD677C24A2D2EDEFCC34A2B9060B794F5FD3C6.comodoca.com"
      ]
    },
    {
      name = "email.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.email.civillegaladvice.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "o3.email.civillegaladvice.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "167.89.46.236"
      ]
    },
    {
      name = "fox.civillegaladvice.service.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-1720.awsdns-23.co.uk.",
        "ns-473.awsdns-59.com.",
        "ns-1129.awsdns-13.org.",
        "ns-673.awsdns-20.net."
      ]
    },
    {
      name = "361fb2b7bee6f5f1c665f45ebc77cf2c.fox.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "A167E0DC9690C4A2C54B6E0F0153385BFE119B5D.comodoca.com."
      ]
    },
    {
      name = "67dbfada734e0d84350dd458d70d41b8.fox.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "BBC8F4A8328AFF24AF73B4A03C8D0ABAF3CCA216.comodoca.com."
      ]
    },
    {
      name = "redirect.civillegaladvice.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    application            = "Civil Legal Advice/CLA"
    business-unit          = "HQ"
    component              = "None"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    owner                  = "None"
  }
}
