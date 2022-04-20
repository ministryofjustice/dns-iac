module "judicialconduct_judiciary_gov_uk" {
  source = "./modules/route53"

  domain      = "judicialconduct.judiciary.gov.uk"
  description = "Tactical Products"

  records = [
    {
      name = "judicialconduct.judiciary.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "url-redirect-service-alb-29017920.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "judicialconduct.judiciary.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1394.awsdns-46.org.",
        "ns-853.awsdns-42.net.",
        "ns-87.awsdns-10.com.",
        "ns-1747.awsdns-26.co.uk."
      ]
    },
    {
      name = "judicialconduct.judiciary.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=LIuB7fXH31a2tLIufPmF_iJTvOBswXVwfhzNP2Q7v_8"
      ]
    },
    {
      name = "_ea56312c0b2585598e27407f504e6ea7.judicialconduct.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_b71ce2e5b4286a4f31f904055a22a40d.vtqfhvjlcp.acm-validations.aws."
      ]
    },
    {
      name = "www.judicialconduct.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "judicialconduct.judiciary.gov.uk"
      ]
    },
    {
      name = "_392396bd3de78b47b17c0c56031c7a77.www.judicialconduct.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_8465c94b2dccef8e2bde5a1091b81534.vtqfhvjlcp.acm-validations.aws."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
