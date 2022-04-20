module "cicap_gov_uk" {
  source = "./modules/route53"

  domain      = "cicap.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "cicap.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "cicap.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 mailhost.cicap.gov.uk."
      ]
    },
    {
      name = "cicap.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-821.awsdns-38.net.",
        "ns-1220.awsdns-24.org.",
        "ns-165.awsdns-20.com.",
        "ns-1619.awsdns-10.co.uk."
      ]
    },
    {
      name = "_dmarc.cicap.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_smtp._tls.cicap.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "mailhost.cicap.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "80.94.32.245"
      ]
    },
    {
      name = "www.cicap.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "cicap.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
