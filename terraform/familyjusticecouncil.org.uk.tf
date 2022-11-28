module "familyjusticecouncil_org_uk_zone" {
  source = "./modules/route53/zone"

  name = "familyjusticecouncil.org.uk"
  tags = {
    application            = "Family Justice Child Arrangement Assessment and Triage/CAAT",
    business-unit          = "HQ",
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk",
    owner                  = "None"
    component              = "None"
  }


}

module "familyjusticecouncil_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.familyjusticecouncil_org_uk_zone.zone_id

  records = [
    {
      name = "familyjusticecouncil.org.uk"
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "familyjusticecouncil.org.uk"
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1656.awsdns-15.co.uk.",
        "ns-498.awsdns-62.com.",
        "ns-1436.awsdns-51.org.",
        "ns-817.awsdns-38.net."
      ]
    },
    {
      name = "familyjusticecouncil.org.uk"
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1656.awsdns-15.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "www.familyjusticecouncil.org.uk"
      type = "A"
      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
  ]
}

