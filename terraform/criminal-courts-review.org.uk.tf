module "criminal_courts_review_org_uk" {
  source = "./modules/route53"

  domain      = "criminal-courts-review.org.uk"
  description = ""

  records = [
    {
      name = "criminal-courts-review.org.uk."
      type = "A"
      ttl  = 600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "criminal-courts-review.org.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1081.awsdns-07.org.",
        "ns-957.awsdns-55.net.",
        "ns-1808.awsdns-34.co.uk.",
        "ns-355.awsdns-44.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
