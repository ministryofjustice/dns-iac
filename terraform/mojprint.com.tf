module "mojprint_com_zone" {
  source = "./modules/route53/zone"

  name = "mojprint.com"
  tags = {
    component = "None"
  }
}

module "mojprint_com_records" {
  source = "./modules/route53/records"

  zone_id = module.mojprint_com_zone.zone_id

  records = [
    {
      name = "mojprint.com."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-30.awsdns-03.com.",
        "ns-1807.awsdns-33.co.uk.",
        "ns-938.awsdns-53.net.",
        "ns-1424.awsdns-50.org."
      ]
    },
    {
      name = "*.mojprint.com."
      type = "CNAME"
      ttl  = 300
      records = [
        "mojprint.com"
      ]
    },
    {
      name = "citrix.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "ftp.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "mail.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "remote.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "www.mojprint.com."
      type = "CNAME"
      ttl  = 300
      records = [
        "mojprint.com"
      ]
    }
  ]
}

moved {
  from = module.mojprint_com.aws_route53_record.default
  to   = module.mojprint_com_records.aws_route53_record.this
}

moved {
  from = module.mojprint_com.aws_route53_zone.default
  to   = module.mojprint_com_zone.aws_route53_zone.this
}
