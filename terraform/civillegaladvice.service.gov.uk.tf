module "civillegaladvice_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "civillegaladvice.service.gov.uk"
  tags = {
    application            = "Civil Legal Advice/CLA"
    business-unit          = "HQ"
    component              = "None"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    owner                  = "None"
  }
}

module "civillegaladvice_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.civillegaladvice_service_gov_uk_zone.zone_id

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
      name = "_a1fd4d292d772692a54d0137560e3592.cases.civillegaladvice.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_d786b333b4660a3e4a1733a220b4d292.acm-validations.aws."
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
      name = "redirect.civillegaladvice.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.civillegaladvice_service_gov_uk.aws_route53_record.default
  to   = module.civillegaladvice_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.civillegaladvice_service_gov_uk.aws_route53_zone.default
  to   = module.civillegaladvice_service_gov_uk_zone.aws_route53_zone.this
}
