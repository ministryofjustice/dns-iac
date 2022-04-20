module "employmenttribunals_gov_uk" {
  source = "./modules/route53"

  domain      = "employmenttribunals.gov.uk"
  description = ""

  records = [
    {
      name = "employmenttribunals.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "employmenttribunals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1276.awsdns-31.org.",
        "ns-592.awsdns-10.net.",
        "ns-1890.awsdns-44.co.uk.",
        "ns-99.awsdns-12.com."
      ]
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
