module "prisonvisits_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "prisonvisits.service.gov.uk"
  tags = {
    application            = "Prison Visits Booking/PVB"
    business-unit          = "HQ"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    owner                  = "PVB pvb-support@digital.justice.gov.uk"
    component              = "None"
  }
}

module "prisonvisits_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.prisonvisits_service_gov_uk_zone.zone_id

  records = [
    {
      name = "prisonvisits.service.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "nns-239.awsdns-29.com.",
        "nns-1941.awsdns-50.co.uk.",
        "nns-1048.awsdns-03.org.",
        "nns-846.awsdns-41.net."
      ]
    },
    {
      name = "prisonvisits.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "ngoogle-site-verification=utmhXhOOtr-od5LNZtVHOyfrK7O6HY2jWWmYoXO3vho",
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "_560b1b59639b34a1ad68b8f9e3df3e05.prisonvisits.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "n_b52b91dfda47884f31e28af9be4a00d0.acm-validations.aws."
      ]
    },
    {
      name = "s1._domainkey.prisonvisits.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ns1.domainkey.u933614.wl115.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.prisonvisits.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ns2.domainkey.u933614.wl115.sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.prisonvisits.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "nk=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "email.prisonvisits.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "nu933614.wl115.sendgrid.net"
      ]
    },
    {
      name = "_dmarc.email.prisonvisits.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "nv=DMARC1; p=reject; pct=100; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
    {
      name = "smtpapi._domainkey.email.prisonvisits.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "nk=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "n.o2.email.prisonvisits.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "167.89.45.118"
      ]
    },
    {
      name = "n.prisonvisits.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZD4D7Y8KGAS4G"
        name                   = "aef1937c1a95711e98cdd0aaafbe3d46-9b185ef26eadab0b.elb.eu-west-2.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_0662eebf2c8887eb3d140983f08c864e.staff.prisonvisits.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "n_ccdd8dd0411099ae3e911729c06b60d8.acm-validations.aws."
      ]
    },
    {
      name = "n.staff.prisonvisits.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZD4D7Y8KGAS4G"
        name                   = "aef1937c1a95711e98cdd0aaafbe3d46-9b185ef26eadab0b.elb.eu-west-2.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_96a0a34a3d77dfbe4994d8fc51b80865.www.prisonvisits.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "n_def825bf0d7c768c25b1d86b85a362c4.acm-validations.aws."
      ]
    },
    {
      name = "n.www.prisonvisits.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "dualstack.pvbpublic-elbpubli-hqx2okis4lto-1815545098.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.prisonvisits_service_gov_uk.aws_route53_record.default
  to   = module.prisonvisits_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.prisonvisits_service_gov_uk.aws_route53_zone.default
  to   = module.prisonvisits_service_gov_uk_zone.aws_route53_zone.this
}
