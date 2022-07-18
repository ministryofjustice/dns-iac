module "admin_courttribunalformfinder_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "admin.courttribunalformfinder.service.gov.uk"
  tags = {
    component = "None"
  }
}

module "admin_courttribunalformfinder_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.admin_courttribunalformfinder_service_gov_uk_zone.zone_id

  records = [
    {
      name = "admin.courttribunalformfinder.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-812.awsdns-37.net.",
        "ns-252.awsdns-31.com.",
        "ns-1415.awsdns-48.org.",
        "ns-1564.awsdns-03.co.uk."
      ]
    },
    {
      name = "_dmarc.admin.courttribunalformfinder.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
  ]
}
