module "moneyclaim_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "moneyclaim.gov.uk"
  tags = {
    Application   = "moneyclaim.gov.uk"
    business-unit = "HMCTS"
    owner         = "HMCTS"
  }
}

module "moneyclaim_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.moneyclaim_gov_uk_zone.zone_id

  records = [
    {
      name = "moneyclaim.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "moneyclaim.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-801.awsdns-36.net.",
        "ns-1192.awsdns-21.org.",
        "ns-401.awsdns-50.com.",
        "ns-1841.awsdns-38.co.uk."
      ]
    },
    {
      name = "www.moneyclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-live-ext-fpahfmgkfrf2cxff.z01.azurefd.net"
      ]
    }
  ]
}

moved {
  from = module.moneyclaim_gov_uk.aws_route53_record.default
  to   = module.moneyclaim_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.moneyclaim_gov_uk.aws_route53_zone.default
  to   = module.moneyclaim_gov_uk_zone.aws_route53_zone.this
}
