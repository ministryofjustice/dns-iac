module "court_service_uk" {
  source = "./modules/route53"

  domain      = "court-service.uk"
  description = ""

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
