module "acceleratedpossession_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "acceleratedpossession.service.gov.uk"

  tags = {
    application            = "Accelerated Possession/AP aka Accelerated Claims aka Civil Claims"
    business-unit          = "HMCTS"
    component              = "None"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
  }
}

module "acceleratedpossession_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.acceleratedpossession_service_gov_uk_zone.zone_id

  records = [
    {
      name = "_dmarc.acceleratedpossession.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    }
  ]
}
