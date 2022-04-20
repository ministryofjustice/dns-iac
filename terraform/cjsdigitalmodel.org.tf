module "cjsdigitalmodel_org" {
  source = "./modules/route53"

  domain      = "cjsdigitalmodel.org"
  description = "Project for Eddie Shannon"

  records = [
    {
      name = "cjsdigitalmodel.org."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "cjsdigitalmodel.org."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-965.awsdns-56.net.",
        "ns-1160.awsdns-17.org.",
        "ns-1575.awsdns-04.co.uk.",
        "ns-331.awsdns-41.com."
      ]
    },
    {
      name = "www.cjsdigitalmodel.org."
      type = "CNAME"
      ttl  = 300
      records = [
        "cjsdigitalmodel.org"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
