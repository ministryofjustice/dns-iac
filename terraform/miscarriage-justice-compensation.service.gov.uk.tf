module "miscarriage_justice_compensation_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "miscarriage-justice-compensation.service.gov.uk"
  tags = {
    component = "None"
  }
}

module "miscarriage_justice_compensation_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.miscarriage_justice_compensation_service_gov_uk_zone.zone_id

  records = [
    {
      name = "miscarriage-justice-compensation.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.mjc-p-loadb-dna259cwvegq-1898926122.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "miscarriage-justice-compensation.service.gov.uk."
      type = "MX"
      ttl  = 60
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "miscarriage-justice-compensation.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-2033.awsdns-62.co.uk.",
        "ns-1060.awsdns-04.org.",
        "ns-337.awsdns-42.com.",
        "ns-714.awsdns-25.net."
      ]
    },
    {
      name = "miscarriage-justice-compensation.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "7ec8abbb758a28b6d85043a567531287.miscarriage-justice-compensation.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "5DAB6779F65B9B622C81936BC8439BFEF801B364.comodoca.com"
      ]
    },
    {
      name = "_72571bf3b2535189122fdfab23b80f04.miscarriage-justice-compensation.service.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_2df3706944db357243873cbf1bdf54f7.ltfvzjuylp.acm-validations.aws."
      ]
    },
    {
      name = "_amazonses.miscarriage-justice-compensation.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "j4uypdUQoB9NDYlaEJTFotkKiioZwquZ4ZdkRpYvKe0="
      ]
    },
    {
      name = "_dmarc.miscarriage-justice-compensation.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "smtpapi._domainkey.miscarriage-justice-compensation.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "email.miscarriage-justice-compensation.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.email.miscarriage-justice-compensation.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "o1.email.miscarriage-justice-compensation.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "198.21.4.244"
      ]
    },
    {
      name = "old.miscarriage-justice-compensation.service.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "62.208.144.91"
      ]
    },
    {
      name = "www.miscarriage-justice-compensation.service.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "62.208.144.91"
      ]
    },
    {
      name = "_7f7cbe5a222467d94fd4bf95adfddaf8.www.miscarriage-justice-compensation.service.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_4fb982480e53d30e10c7a8daf958b021.ltfvzjuylp.acm-validations.aws."
      ]
    }
  ]
}

moved {
  from = module.miscarriage_justice_compensation_service_gov_uk.aws_route53_record.default
  to   = module.miscarriage_justice_compensation_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.miscarriage_justice_compensation_service_gov_uk.aws_route53_zone.default
  to   = module.miscarriage_justice_compensation_service_gov_uk_zone.aws_route53_zone.this
}
