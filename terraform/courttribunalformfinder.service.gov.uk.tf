module "courttribunalformfinder_service_gov_uk" {
  source = "./modules/route53"

  domain      = "courttribunalformfinder.service.gov.uk"
  description = ""

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
      name = "72559f43db69c1b3522722022a4e88ac.courttribunalformfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "7514F5875B8843D2F9D2B73354CF06FBEB05113E.comodoca.com."
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
    {
      name = "d1ca871e86e439faf6aea60e908f1b26.courttribunalformfinder.service.gov.uk."
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
