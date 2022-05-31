module "walesoffice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "walesoffice.gov.uk"
  tags = {}
}

module "walesoffice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.walesoffice_gov_uk_zone.zone_id

  records = [
    {
      name = "walesoffice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "151.101.2.30",
        "151.101.66.30",
        "151.101.130.30",
        "151.101.194.30"
      ]
    },
    {
      name = "walesoffice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1907.awsdns-46.co.uk.",
        "ns-1076.awsdns-06.org.",
        "ns-998.awsdns-60.net.",
        "ns-386.awsdns-48.com."
      ]
    },
    {
      name = "www.walesoffice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "151.101.2.30",
        "151.101.66.30",
        "151.101.130.30",
        "151.101.194.30"
      ]
    }
  ]
}

moved {
  from = module.walesoffice_gov_uk.aws_route53_record.default
  to   = module.walesoffice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.walesoffice_gov_uk.aws_route53_zone.default
  to   = module.walesoffice_gov_uk_zone.aws_route53_zone.this
}
