# Please not that this is not a live hosted zone, it has been moved to the Cloud Platform
# The reason we maintain this zone is that a live MTA STS setup lives here which is deployed via the MTA STS repo


module "ccrc_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "ccrc.gov.uk"
  description = "Tactical Products – mail and ftp subdomains are hosted by Seiretto. MX record is used for mail forwarding at Seiretto."

  tags = {
    component = "None"
  }
}

module "ccrc_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.ccrc_gov_uk_zone.zone_id

  records = [
    {
      name = "ccrc.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-27.awsdns-03.com.",
        "ns-1312.awsdns-36.org.",
        "ns-951.awsdns-54.net.",
        "ns-1703.awsdns-20.co.uk."
      ]
    },
  ]
}

moved {
  from = module.ccrc_gov_uk.aws_route53_record.default
  to   = module.ccrc_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.ccrc_gov_uk.aws_route53_zone.default
  to   = module.ccrc_gov_uk_zone.aws_route53_zone.this
}
