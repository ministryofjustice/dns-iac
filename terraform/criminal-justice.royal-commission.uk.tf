module "criminal_justice_royal_commission_uk_zone" {
  source = "./modules/route53/zone"

  name        = "criminal-justice.royal-commission.uk"
  description = "Royal Commission for Criminal Justice"

  tags = {}
}

module "criminal_justice_royal_commission_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.criminal_justice_royal_commission_uk_zone.zone_id

  records = [
    {
      name = "criminal-justice.royal-commission.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1213.awsdns-23.org.",
        "ns-466.awsdns-58.com.",
        "ns-1799.awsdns-32.co.uk.",
        "ns-673.awsdns-20.net."
      ]
    }
  ]
}

moved {
  from = module.criminal_justice_royal_commission_uk.aws_route53_record.default
  to   = module.criminal_justice_royal_commission_uk_records.aws_route53_record.this
}

moved {
  from = module.criminal_justice_royal_commission_uk.aws_route53_zone.default
  to   = module.criminal_justice_royal_commission_uk_zone.aws_route53_zone.this
}
