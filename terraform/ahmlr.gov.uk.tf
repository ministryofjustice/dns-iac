module "ahmlr_gov_uk" {
  source = "./modules/route53"

  domain      = "ahmlr.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "ahmlr.gov.uk."
      type = "A"
      ttl  = 300

      records = [
        "52.30.196.9",
      ]
    },
    {
      name = "ahmlr.gov.uk."
      type = "NS"
      ttl  = 172800

      records = [
        "ns-1044.awsdns-02.org.",
        "ns-632.awsdns-15.net.",
        "ns-127.awsdns-15.com.",
        "ns-1724.awsdns-23.co.uk.",
      ]
    },
    {
      name = "www.ahmlr.gov.uk."
      type = "A"

      alias = {
        zone_id                = "self"
        name                   = "ahmlr.gov.uk."
        evaluate_target_health = false
      }
    },
  ]

  tags = {
    component = "None"
  }
}
