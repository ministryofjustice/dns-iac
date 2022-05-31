module "lscc_org_uk_zone" {
  source = "./modules/route53/zone"

  name = "lscc.org.uk"
  tags = {
    component = "None"
  }
}

module "lscc_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.lscc_org_uk_zone.zone_id

  records = [
    {
      name = "lscc.org.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "lscc.org.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-928.awsdns-52.net.",
        "ns-1450.awsdns-53.org.",
        "ns-1802.awsdns-33.co.uk.",
        "ns-9.awsdns-01.com."
      ]
    }
  ]
}

moved {
  from = module.lscc_org_uk.aws_route53_record.default
  to   = module.lscc_org_uk_records.aws_route53_record.this
}

moved {
  from = module.lscc_org_uk.aws_route53_zone.default
  to   = module.lscc_org_uk_zone.aws_route53_zone.this
}
