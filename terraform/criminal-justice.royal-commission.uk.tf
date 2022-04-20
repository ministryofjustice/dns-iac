module "criminal_justice_royal_commission_uk" {
  source = "./modules/route53"

  domain      = "criminal-justice.royal-commission.uk"
  description = "Royal Commission for Criminal Justice"

  records = [
    {
      name = "criminal-justice.royal-commission.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1213.awsdns-23.org.",
        "ns-466.awsdns-58.com.",
        "ns-1799.awsdns-32.co.uk.",
        "ns-673.awsdns-20.net."
      ]
    }
  ]
}
