module "cicap_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "cicap.gov.uk"
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
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
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
        zone_id                = module.cicap_gov_uk_zone.zone_id
        name                   = "cicap.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.cicap_gov_uk.aws_route53_record.default
  to   = module.cicap_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.cicap_gov_uk.aws_route53_zone.default
  to   = module.cicap_gov_uk_zone.aws_route53_zone.this
}
