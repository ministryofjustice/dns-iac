module "courttribunalformfinder_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "courttribunalformfinder.service.gov.uk"
  tags = {
    component = "None"
  }
}

module "courttribunalformfinder_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.courttribunalformfinder_service_gov_uk_zone.zone_id

  records = [
    {
      name = "courttribunalformfinder.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-856.awsdns-43.net.",
        "ns-1441.awsdns-52.org.",
        "ns-1607.awsdns-08.co.uk.",
        "ns-236.awsdns-29.com."
      ]
    },
    {
      name = "63qelg6pqp4a.courttribunalformfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "gv-Y6W2TLGRV7N54L.dv.googlehosted.com."
      ]
    },
    {
      name = "_dmarc.courttribunalformfinder.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
    {
      name = "admin.courttribunalformfinder.service.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-790.awsdns-34.net",
        "ns-225.awsdns-28.com",
        "ns-1601.awsdns-08.co.uk",
        "ns-1415.awsdns-48.org"
      ]
    },
  ]
}

moved {
  from = module.courttribunalformfinder_service_gov_uk.aws_route53_record.default
  to   = module.courttribunalformfinder_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.courttribunalformfinder_service_gov_uk.aws_route53_zone.default
  to   = module.courttribunalformfinder_service_gov_uk_zone.aws_route53_zone.this
}
