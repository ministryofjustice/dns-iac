module "appeal_tax_tribunal_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "appeal-tax-tribunal.service.gov.uk"
  description = "Tax Tribunals public beta"
  tags = {
    component = "None"
  }
}

module "appeal_tax_tribunal_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.appeal_tax_tribunal_service_gov_uk_zone.zone_id

  records = [
    {
      name = "appeal-tax-tribunal.service.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "51.140.165.14"
      ]
    },
    {
      name = "appeal-tax-tribunal.service.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "appeal-tax-tribunal.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-36.awsdns-04.com.",
        "ns-776.awsdns-33.net.",
        "ns-1074.awsdns-06.org.",
        "ns-1809.awsdns-34.co.uk."
      ]
    },
    {
      name = "_113b2d493fe004f7924527b478a4652d.appeal-tax-tribunal.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_1dd26da2a473d2eca1980a60d6c046a2.tljzshvwok.acm-validations.aws."
      ]
    },
    {
      name = "_a4d1c79e07d254f42554e177169a67ef.appeal-tax-tribunal.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "78FD839CEF99EACF39155B98A287D581.145FF1BECB4321D9C6C8E6F3535C77A8.0d43f5cbdcf4166b6d53.comodoca.com."
      ]
    },
    {
      name = "_acme-challenge.appeal-tax-tribunal.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "yP1b2fyuHqZ_RcXDYV8nbH1FhYQuCt5KHusTAONwgg0",
        "gKRej2crvHAATtd_CsnGtsC0loWhIBJg3z3USUV_7MA"
      ]
    },
    {
      name = "_amazonses.appeal-tax-tribunal.service.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "FC5hEoZhS3sxx0xdPKDVZa4QbDdi+6HGmsli5uEFu+M="
      ]
    },
    {
      name = "_dmarc.appeal-tax-tribunal.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "bgf6rpriaig3jsvjnoy5ydznt6b6clda._domainkey.appeal-tax-tribunal.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "bgf6rpriaig3jsvjnoy5ydznt6b6clda.dkim.amazonses.com"
      ]
    },
    {
      name = "f5tmuvq2rtxyc67dx3t4xojpqwvl36kv._domainkey.appeal-tax-tribunal.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "f5tmuvq2rtxyc67dx3t4xojpqwvl36kv.dkim.amazonses.com"
      ]
    },
    {
      name = "kuie7gkoth6cj6tbn36r36wcliicdflo._domainkey.appeal-tax-tribunal.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "kuie7gkoth6cj6tbn36r36wcliicdflo.dkim.amazonses.com"
      ]
    },
    {
      name = "appeal-tax-f6885b5e.appeal-tax-tribunal.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbappea-4avsbxgn9eca-2058110235.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "staging.appeal-tax-tribunal.service.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "tax-tribunals-datacapture-stagingbeta.appeal-tax-tribunal.service.gov.uk."
      ]
    },
    {
      name = "tax-tribunals-datacapture-stagingbeta-1049b7df.appeal-tax-tribunal.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-brikcvpnyvct-1698472806.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-datacapture-stagingbeta.appeal-tax-tribunal.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-brikcvpnyvct-1698472806.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.appeal_tax_tribunal_service_gov_uk.aws_route53_record.default
  to   = module.appeal_tax_tribunal_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.appeal_tax_tribunal_service_gov_uk.aws_route53_zone.default
  to   = module.appeal_tax_tribunal_service_gov_uk_zone.aws_route53_zone.this
}
