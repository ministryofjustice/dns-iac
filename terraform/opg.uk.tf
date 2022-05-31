module "opg_uk_zone" {
  source = "./modules/route53/zone"

  name = "opg.uk"
  tags = {}
}

module "opg_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.opg_uk_zone.zone_id

  records = [
    {
      name = "opg.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "opg.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "opg.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-2042.awsdns-63.co.uk.",
        "ns-567.awsdns-06.net.",
        "ns-56.awsdns-07.com.",
        "ns-1464.awsdns-55.org."
      ]
    },
    {
      name = "opg.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_dmarc.opg.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "*._domainkey.opg.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\; p="
      ]
    }
  ]
}

moved {
  from = module.opg_uk.aws_route53_record.default
  to   = module.opg_uk_records.aws_route53_record.this
}

moved {
  from = module.opg_uk.aws_route53_zone.default
  to   = module.opg_uk_zone.aws_route53_zone.this
}
