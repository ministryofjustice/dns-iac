module "hmctsformfinder_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "hmctsformfinder.justice.gov.uk"
  description = "Tactical Products"

  records = [
    {
      name = "hmctsformfinder.justice.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "151.101.0.204",
        "151.101.64.204",
        "151.101.128.204",
        "151.101.192.204"
      ]
    },
    {
      name = "hmctsformfinder.justice.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-458.awsdns-57.com.",
        "ns-575.awsdns-07.net.",
        "ns-1148.awsdns-15.org.",
        "ns-1594.awsdns-07.co.uk."
      ]
    },
    {
      name = "formfinder.hmctsformfinder.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "d301g2w8selu10.cloudfront.net"
      ]
    },
    {
      name = "hmcts-formfinder-prod.hmctsformfinder.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "formfinde-elbhmcts-17552f5zenboa-1256800032.eu-west-1.elb.amazonaws.com"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
