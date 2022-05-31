module "court_service_uk_zone" {
  source = "./modules/route53/zone"

  name = "court-service.uk"
  tags = {}
}

module "court_service_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.court_service_uk_zone.zone_id

  records = [
    {
      name = "court-service.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "court-service.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "court-service.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-537.awsdns-03.net.",
        "ns-201.awsdns-25.com.",
        "ns-1682.awsdns-18.co.uk.",
        "ns-1499.awsdns-59.org."
      ]
    },
    {
      name = "court-service.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_dmarc.court-service.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "*._domainkey.court-service.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\; p="
      ]
    }
  ]
}

moved {
  from = module.court_service_uk.aws_route53_record.default
  to   = module.court_service_uk_records.aws_route53_record.this
}

moved {
  from = module.court_service_uk.aws_route53_zone.default
  to   = module.court_service_uk_zone.aws_route53_zone.this
}
