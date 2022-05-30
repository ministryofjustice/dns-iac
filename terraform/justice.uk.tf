module "justice_uk" {
  source = "./modules/route53"

  domain      = "justice.uk"
  description = ""

  records = [
    {
      name = "justice.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "justice.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "justice.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1664.awsdns-16.co.uk.",
        "ns-400.awsdns-50.com.",
        "ns-828.awsdns-39.net.",
        "ns-1499.awsdns-59.org."
      ]
    },
    {
      name = "justice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_dmarc.justice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "*._domainkey.justice.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\; p="
      ]
    }
  ]
}
