module "employmentappeals_gov_uk" {
  source = "./modules/route53"

  domain      = "employmentappeals.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "employmentappeals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "employmentappeals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1558.awsdns-02.co.uk.",
        "ns-478.awsdns-59.com.",
        "ns-771.awsdns-32.net.",
        "ns-1404.awsdns-47.org."
      ]
    },
    {
      name = "www.employmentappeals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "employmentappeals.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    application            = "Employment Tribunal/ET Application for Applying To an Employment Tribunal/ATET "
    business-unit          = "HMCTS"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
    component = "None"
  }
}
