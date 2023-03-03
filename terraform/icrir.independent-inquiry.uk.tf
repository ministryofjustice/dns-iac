module "icrir_independent-inquiry_uk_zone" {
  source = "./modules/route53/zone"

  name        = "icrir.independent-inquiry.uk."
  description = "inquiry site on behalf of the Northern Ireland Office (NIO) on our Wordpress multisite platform"

  tags = {
  }
}

module "icrir_independent-inquiry_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.icrir_independent-inquiry_uk_zone.zone_id

  records = [
    {
      name = "icrir.independent-inquiry.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1963.awsdns-53.co.uk.", 
        "ns-516.awsdns-00.net.", 
        "ns-334.awsdns-41.com.", 
        "ns-1158.awsdns-16.org."
      ]
    }, 
    {
      name = "icrir.independent-inquiry.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-1963.awsdns-53.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }
  ]
}