module "justice_uk_zone" {
  source = "./modules/route53/zone"

  name = "justice.uk"
  tags = {}
}

module "justice_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.justice_uk_zone.zone_id

  records = [
    {
      name = "justice.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "justice.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "justice.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1664.awsdns-16.co.uk.",
        "ns-400.awsdns-50.com.",
        "ns-828.awsdns-39.net.",
        "ns-1499.awsdns-59.org."
      ]
    },
    {
      name = "justice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_dmarc.justice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "*._domainkey.justice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\; p="
      ]
    }
  ]
}

moved {
  from = module.justice_uk.aws_route53_record.default
  to   = module.justice_uk_records.aws_route53_record.this
}

moved {
  from = module.justice_uk.aws_route53_zone.default
  to   = module.justice_uk_zone.aws_route53_zone.this
}
