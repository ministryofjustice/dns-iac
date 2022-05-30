module "acceleratedpossession_service_gov_uk" {
  source = "./modules/route53"

  domain      = "acceleratedpossession.service.gov.uk"
  description = ""

  records = [
    {
      name = "acceleratedpossession.service.gov.uk."
      type = "NS"
      ttl  = 172800

      records = [
        "ns-1990.awsdns-56.co.uk.",
        "ns-1195.awsdns-21.org.",
        "ns-159.awsdns-19.com.",
        "ns-713.awsdns-25.net.",
      ]
    },
    {
      name = "_dmarc.acceleratedpossession.service.gov.uk."
      type = "TXT"
      ttl  = 7200

      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;",
      ]
    },
  ]

  tags = {
    application            = "Accelerated Possession/AP aka Accelerated Claims aka Civil Claims"
    business-unit          = "HMCTS"
    component              = "None"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
  }
}
