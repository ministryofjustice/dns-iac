module "ubi_courtfunds_gov_uk" {
  source = "./modules/route53"

  domain      = "ubi.courtfunds.gov.uk"
  description = "Tactical Products"

  records = [
    {
      name = "ubi.courtfunds.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-2.id
        name                   = "dualstack.ubi-p-loadb-1rk7d55h8z4t3-1469044134.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "ubi.courtfunds.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-546.awsdns-04.net.",
        "ns-395.awsdns-49.com.",
        "ns-1680.awsdns-18.co.uk.",
        "ns-1326.awsdns-37.org."
      ]
    },
    {
      name = "306b2fa1154738c0782a75d206f56212.ubi.courtfunds.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "5132DE01FEF918E0767262968F209FBA361E9793.comodoca.com"
      ]
    },
    {
      name = "_441c14c094878cfc289b7f1806119e16.ubi.courtfunds.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_84a3a2dfeb7bbb7be48a8408eef2e026.hkvuiqjoua.acm-validations.aws."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
