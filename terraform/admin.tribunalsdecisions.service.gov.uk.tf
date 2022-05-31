module "admin_tribunalsdecisions_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "admin.tribunalsdecisions.service.gov.uk"
  tags = {
    component = "None"
  }
}

module "admin_tribunalsdecisions_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.admin_tribunalsdecisions_service_gov_uk_zone.zone_id

  records = [
    {
      name = "admin.tribunalsdecisions.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1462.awsdns-54.org.",
        "ns-1865.awsdns-41.co.uk.",
        "ns-642.awsdns-16.net.",
        "ns-88.awsdns-11.com."
      ]
    },
    {
      name = "_dmarc.admin.tribunalsdecisions.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
    {
      name = "d1ca871e86e439faf6aea60e908f1b26.admin.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "EF3C36152DB8BD7CB79A7B5468BC8131213A66B7.comodoca.com."
      ]
    }
  ]
}

moved {
  from = module.admin_tribunalsdecisions_service_gov_uk.aws_route53_record.default
  to   = module.admin_tribunalsdecisions_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.admin_tribunalsdecisions_service_gov_uk.aws_route53_zone.default
  to   = module.admin_tribunalsdecisions_service_gov_uk_zone.aws_route53_zone.this
}
