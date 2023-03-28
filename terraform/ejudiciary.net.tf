module "ejudiciary_net_zone" {
  source = "./modules/route53/zone"

  name        = "ejudiciary.net"
  description = "HMCTS zone - contact DTSPlatformOperations@justice.gov.uk"

  tags = {
    component = "None"
  }
}

module "ejudiciary_net_records" {
  source = "./modules/route53/records"

  zone_id = module.ejudiciary_net_zone.zone_id

  records = [
    {
      name = "ejudiciary.net."
      type = "NS"
      ttl  = 60
      records = [
        "ns1-07.azure-dns.com.",
        "ns2-07.azure-dns.net.",
        "ns3-07.azure-dns.org.",
        "ns4-07.azure-dns.info."
      ]
    },
  ]
}
