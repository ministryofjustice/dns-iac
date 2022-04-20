module "appeals_service_gov_uk" {
  source = "./modules/route53"

  domain      = "appeals-service.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "appeals-service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "appeals-service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-806.awsdns-36.net.",
        "ns-1039.awsdns-01.org.",
        "ns-1728.awsdns-24.co.uk.",
        "ns-470.awsdns-58.com."
      ]
    },
    {
      name = "www.appeals-service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "appeals-service.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}
