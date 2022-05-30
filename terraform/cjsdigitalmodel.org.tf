module "cjsdigitalmodel_org_zone" {
  source = "./modules/route53/zone"

  name        = "cjsdigitalmodel.org"
  description = "Project for Eddie Shannon"

  tags = {
    component = "None"
  }
}

module "cjsdigitalmodel_org_records" {
  source = "./modules/route53/records"

  zone_id = module.cjsdigitalmodel_org_zone.zone_id

  records = [
    {
      name = "cjsdigitalmodel.org."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "cjsdigitalmodel.org."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-965.awsdns-56.net.",
        "ns-1160.awsdns-17.org.",
        "ns-1575.awsdns-04.co.uk.",
        "ns-331.awsdns-41.com."
      ]
    },
    {
      name = "www.cjsdigitalmodel.org."
      type = "CNAME"
      ttl  = 300
      records = [
        "cjsdigitalmodel.org"
      ]
    }
  ]
}

moved {
  from = module.cjsdigitalmodel_org.aws_route53_record.default
  to   = module.cjsdigitalmodel_org_records.aws_route53_record.this
}

moved {
  from = module.cjsdigitalmodel_org.aws_route53_zone.default
  to   = module.cjsdigitalmodel_org_zone.aws_route53_zone.this
}
