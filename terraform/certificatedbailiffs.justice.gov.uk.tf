module "certificatedbailiffs_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "certificatedbailiffs.justice.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

moved {
  from = module.certificatedbailiffs_justice_gov_uk.aws_route53_record.default
  to   = module.certificatedbailiffs_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.certificatedbailiffs_justice_gov_uk.aws_route53_zone.default
  to   = module.certificatedbailiffs_justice_gov_uk_zone.aws_route53_zone.this
}
