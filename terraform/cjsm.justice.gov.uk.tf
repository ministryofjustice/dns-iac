module "cjsm_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "cjsm.justice.gov.uk"
  description = ""

  records = [
    {
      name = "cjsm.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "185.199.108.153",
        "185.199.109.153",
        "185.199.110.153",
        "185.199.111.153"
      ]
    },
    {
      name = "cjsm.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-24.awsdns-03.com.",
        "ns-1759.awsdns-27.co.uk.",
        "ns-1398.awsdns-46.org.",
        "ns-1011.awsdns-62.net."
      ]
    },
    {
      name = "www.dev.cjsm.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-102.awsdns-12.com",
        "ns-1410.awsdns-48.org",
        "ns-1565.awsdns-03.co.uk",
        "ns-608.awsdns-12.net"
      ]
    },
    {
      name = "www.cjsm.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1486.awsdns-57.org",
        "ns-2024.awsdns-61.co.uk",
        "ns-246.awsdns-30.com",
        "ns-845.awsdns-41.net"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
