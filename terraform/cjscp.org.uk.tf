module "cjscp_org_uk_zone" {
  source = "./modules/route53/zone"

  name        = "cjscp.org.uk"
  description = "HMCTS zone - contact DTSPlatformOperations@justice.gov.uk"

  tags = {
    component = "None"
  }
}

module "cjscp_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.cjscp_org_uk_zone.zone_id

  records = [
    {
      name = "cjscp.org.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns1-01.azure-dns.com.",
        "ns2-01.azure-dns.net.",
        "ns3-01.azure-dns.org.",
        "ns4-01.azure-dns.info."
      ]
    },
  ]
}
