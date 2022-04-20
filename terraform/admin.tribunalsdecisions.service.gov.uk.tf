module "admin_tribunalsdecisions_service_gov_uk" {
  source = "./modules/route53"

  domain      = "admin.tribunalsdecisions.service.gov.uk"
  description = ""

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

  tags = {
    component = "None"
  }
}
