module "probationservice_uk" {
  source = "./modules/route53"

  domain      = "probationservice.uk"
  description = ""

  records = [
    {
      name = "probationservice.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "probationservice.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "probationservice.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1143.awsdns-14.org.",
        "ns-381.awsdns-47.com.",
        "ns-697.awsdns-23.net.",
        "ns-1666.awsdns-16.co.uk."
      ]
    },
    {
      name = "probationservice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_dmarc.probationservice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "*._domainkey.probationservice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\; p="
      ]
    }
  ]
}
