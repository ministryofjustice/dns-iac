module "opg_uk" {
  source = "./modules/route53"

  domain      = "opg.uk"
  description = ""

  records = [
    {
      name = "opg.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "opg.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "opg.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-2042.awsdns-63.co.uk.",
        "ns-567.awsdns-06.net.",
        "ns-56.awsdns-07.com.",
        "ns-1464.awsdns-55.org."
      ]
    },
    {
      name = "opg.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_dmarc.opg.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "*._domainkey.opg.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1\\; p="
      ]
    }
  ]
}
