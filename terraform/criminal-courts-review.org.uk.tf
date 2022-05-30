module "criminal_courts_review_org_uk_zone" {
  source = "./modules/route53/zone"

  name = "criminal-courts-review.org.uk"
  tags = {
    component = "None"
  }
}

module "criminal_courts_review_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.criminal_courts_review_org_uk_zone.zone_id

  records = [
    {
      name = "criminal-courts-review.org.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "criminal-courts-review.org.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1081.awsdns-07.org.",
        "ns-957.awsdns-55.net.",
        "ns-1808.awsdns-34.co.uk.",
        "ns-355.awsdns-44.com."
      ]
    }
  ]
}

moved {
  from = module.criminal_courts_review_org_uk.aws_route53_record.default
  to   = module.criminal_courts_review_org_uk_records.aws_route53_record.this
}

moved {
  from = module.criminal_courts_review_org_uk.aws_route53_zone.default
  to   = module.criminal_courts_review_org_uk_zone.aws_route53_zone.this
}
