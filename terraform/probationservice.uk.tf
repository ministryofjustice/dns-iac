module "probationservice_uk_zone" {
  source = "./modules/route53/zone"

  name = "probationservice.uk"
  tags = {}
}

module "probationservice_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.probationservice_uk_zone.zone_id

  records = [
    {
      name = "probationservice.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "probationservice.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "probationservice.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1143.awsdns-14.org.",
        "ns-381.awsdns-47.com.",
        "ns-697.awsdns-23.net.",
        "ns-1666.awsdns-16.co.uk."
      ]
    },
    {
      name = "probationservice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_dmarc.probationservice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "*._domainkey.probationservice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\; p="
      ]
    }
  ]
}

moved {
  from = module.probationservice_uk.aws_route53_record.default
  to   = module.probationservice_uk_records.aws_route53_record.this
}

moved {
  from = module.probationservice_uk.aws_route53_zone.default
  to   = module.probationservice_uk_zone.aws_route53_zone.this
}
