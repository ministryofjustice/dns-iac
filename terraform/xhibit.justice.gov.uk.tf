module "xhibit_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "xhibit.justice.gov.uk"
  description = ""

  records = [
    {
      name = "xhibit.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "xhibit.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-632.awsdns-15.net.",
        "ns-1755.awsdns-27.co.uk.",
        "ns-1197.awsdns-21.org.",
        "ns-5.awsdns-00.com."
      ]
    },
    {
      name = "_60ea7b43706335f0bb1c92131c8324b6.xhibit.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_01043a23fa206ed27aef9e1016547f29.acm-validations.aws."
      ]
    },
    {
      name = "www.xhibit.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
