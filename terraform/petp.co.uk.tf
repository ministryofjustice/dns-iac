module "petp_co_uk_zone" {
  source = "./modules/route53/zone"

  name        = "petp.co.uk."

  tags = {
    component = "None"
  }
}

module "petp_co_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.petp_co_uk_zone.zone_id

  records = [
    {
      name = "petp.co.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.70.184.38"
      ]
    }, 
    {
      name = "petp.co.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "1 ASPMX.L.GOOGLE.COM", 
        "5 ALT1.ASPMX.L.GOOGLE.COM", 
        "5 ALT2.ASPMX.L.GOOGLE.COM", 
        "10 ALT3.ASPMX.L.GOOGLE.COM", 
        "10 ALT4.ASPMX.L.GOOGLE.COM"
      ]
    }, 
    {
      name = "petp.co.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1309.awsdns-35.org.", 
        "ns-201.awsdns-25.com.", 
        "ns-811.awsdns-37.net.", 
        "ns-1734.awsdns-24.co.uk."
      ]
    }, 
    {
      name = "petp.co.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1309.awsdns-35.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "petp.co.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:_mailcust.gandi.net ~all", 
        "google-site-verification=junOlbkbzdr24SEyLd30GBPLhGJUJZPGqQiu_rL8JfI"
      ]
    }, 
    {
      name = "_asvdns-f2dc2f00-55d6-4f48-a49f-8a7f7d51331a.petp.co.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_9c58905c-59f4-4c03-8195-0d012d83240d"
      ]
    }, 
    {
      name = "_dmarc.petp.co.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    }, 
    {
      name = "_smtp._tls.petp.co.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }
  ]
}