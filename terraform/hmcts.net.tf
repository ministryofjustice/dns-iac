module "hmcts_net_zone" {
  source = "./modules/route53/zone"

  name        = "hmcts.net"
  description = "HMCTS zone - contact DTSPlatformOperations@justice.gov.uk"

  tags = {
    component = "None"
  }
}

module "hmcts_net_records" {
  source = "./modules/route53/records"

  zone_id = module.hmcts_net_zone.zone_id

  records = [
    {
      name = "hmcts.net."
      type = "NS"
      ttl  = 60
      records = [
        "ns1-201.azure-dns.com.",
        "ns2-201.azure-dns.net.",
        "ns3-201.azure-dns.org.",
        "ns4-201.azure-dns.info."
      ]
    },
  ]
}
