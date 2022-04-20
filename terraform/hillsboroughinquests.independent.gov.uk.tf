module "hillsboroughinquests_independent_gov_uk" {
  source = "./modules/route53"

  domain      = "hillsboroughinquests.independent.gov.uk"
  description = ""

  records = [
    {
      name = "hillsboroughinquests.independent.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.hills-loadb-67aj9rqzyqiu-964494793.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "hillsboroughinquests.independent.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1727.awsdns-23.co.uk.",
        "ns-519.awsdns-00.net.",
        "ns-1433.awsdns-51.org.",
        "ns-367.awsdns-45.com."
      ]
    },
    {
      name = "_dbba0a299a5085e687f708e302c2089c.hillsboroughinquests.independent.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_33cbffaf7c36140f8922e4f00027dc0c.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "c442256c2ebd5bfabd87a3c4ba80f08d.hillsboroughinquests.independent.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "CAF8E8CE41E0DDD519D4E2312FA315331EF0FF77.comodoca.com."
      ]
    },
    {
      name = "www.hillsboroughinquests.independent.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.hills-loadb-67aj9rqzyqiu-964494793.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_404c4a61de1b9aed45c6e59cd837dc04.www.hillsboroughinquests.independent.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_2762b8e44eeffa9ca012abc881f5d403.hkvuiqjoua.acm-validations.aws."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
