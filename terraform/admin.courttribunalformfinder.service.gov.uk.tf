module "admin_courttribunalformfinder_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  domain      = "admin.courttribunalformfinder.service.gov.uk"
  description = ""
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
    {
      name = "d1ca871e86e439faf6aea60e908f1b26.admin.courttribunalformfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "EF3C36152DB8BD7CB79A7B5468BC8131213A66B7.comodoca.com."
      ]
    }
  ]
}
