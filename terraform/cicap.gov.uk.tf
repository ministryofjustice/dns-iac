module "cicap_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "cicap.gov.uk."
  description = "Tribunals decisions database"

  tags = {
    component = "None"
  }
}

module "cicap_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.cicap_gov_uk_zone.zone_id

  records = [
    {
      name = "cicap.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "cicap.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 mailhost.cicap.gov.uk."
      ]
    }, 
    {
      name = "cicap.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-821.awsdns-38.net.", 
        "ns-1220.awsdns-24.org.", 
        "ns-165.awsdns-20.com.", 
        "ns-1619.awsdns-10.co.uk."
      ]
    }, 
    {
      name = "cicap.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-821.awsdns-38.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "_asvdns-03b6f09c-39de-49bb-ab61-98904b93aa95.cicap.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_7f34ffa0-66d0-48fd-b0f9-cec3e8d1736b"
      ]
    }, 
    {
      name = "_dmarc.cicap.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    }, 
    {
      name = "_smtp._tls.cicap.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "mailhost.cicap.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "80.94.32.245"
      ]
    }, 
    {
      name = "www.cicap.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z3LUATXYL5BFJS"
        name                   = "cicap.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}