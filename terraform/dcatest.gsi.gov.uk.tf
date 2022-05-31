module "dcatest_gsi_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "dcatest.gsi.gov.uk"
  description = "GSI zone (GCF test)"
  tags = {
    component = "None"
  }
}

module "dcatest_gsi_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.dcatest_gsi_gov_uk_zone.zone_id

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
}

moved {
  from = module.dcatest_gsi_gov_uk.aws_route53_record.default
  to   = module.dcatest_gsi_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.dcatest_gsi_gov_uk.aws_route53_zone.default
  to   = module.dcatest_gsi_gov_uk_zone.aws_route53_zone.this
}
