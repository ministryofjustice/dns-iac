module "yjils_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "yjils.justice.gov.uk"
  description = ""

  records = [
    {
      name = "yjils.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.248.250.65"
      ]
    },
    {
      name = "yjils.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1777.awsdns-30.co.uk.",
        "ns-526.awsdns-01.net.",
        "ns-294.awsdns-36.com.",
        "ns-1509.awsdns-60.org."
      ]
    },
    {
      name = "_amazonses.yjils.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "L/PeLeL0Dz/1VizR84If1wvaZZ+aX+k82jhasJFcOkQ="
      ]
    },
    {
      name = "35llr7vvjyf2asxtmocaafslyojqgoy2._domainkey.yjils.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "35llr7vvjyf2asxtmocaafslyojqgoy2.dkim.amazonses.com"
      ]
    },
    {
      name = "xizfpml5z6ivwvzswinpibwt7t36kttr._domainkey.yjils.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "xizfpml5z6ivwvzswinpibwt7t36kttr.dkim.amazonses.com"
      ]
    },
    {
      name = "zkv46ehpqkfqxfbpr6reap6fmibkxmvm._domainkey.yjils.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "zkv46ehpqkfqxfbpr6reap6fmibkxmvm.dkim.amazonses.com"
      ]
    },
    {
      name = "www.yjils.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.248.250.65"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
