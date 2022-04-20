module "familymediators_service_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "familymediators.service.justice.gov.uk"
  description = ""

  records = [
    {
      name = "familymediators.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.fm-prod-32-elbprod-lhyyeqhw8thf-1599057792.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "familymediators.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1663.awsdns-15.co.uk.",
        "ns-840.awsdns-41.net.",
        "ns-147.awsdns-18.com.",
        "ns-1263.awsdns-29.org."
      ]
    },
    {
      name = "_acme-challenge.familymediators.service.justice.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "o1SCu5Ydh9CNi5F-oVVsSI_PVurFkBZbSmOWcO0iS8s"
      ]
    },
    {
      name = "_amazonses.familymediators.service.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "RKcmB8w/owEvZwyb2kOl3taKa+4YZ1I1FiwGgl9MvIs="
      ]
    }
  ]

  tags = {
    application = "Family Mediators/FM"
    business-unit = "HQ"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    owner = "None"
    component = "None"
  }
}
