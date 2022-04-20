module "dcatest_gsi_gov_uk" {
  source = "./modules/route53"

  domain      = "dcatest.gsi.gov.uk"
  description = "GSI zone (GCF test)"

  records = [
    {
      name = "dcatest.gsi.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-513.awsdns-00.net.",
        "ns-500.awsdns-62.com.",
        "ns-1395.awsdns-46.org.",
        "ns-1823.awsdns-35.co.uk."
      ]
    },
    {
      name = "dcatest.gsi.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "MS=ms54556666"
      ]
    },
    {
      name = "prafd5z6aoel.dcatest.gsi.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "gv-iy64ocdssqqqkp.dv.googlehosted.com"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
