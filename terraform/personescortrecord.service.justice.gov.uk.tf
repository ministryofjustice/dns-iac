module "personescortrecord_service_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "personescortrecord.service.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "personescortrecord_service_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.personescortrecord_service_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "personescortrecord.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.mps-prod-elbmpspr-1lmy89ds8unjp-1551553293.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "personescortrecord.service.justice.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "personescortrecord.service.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1525.awsdns-62.org.",
        "ns-1768.awsdns-29.co.uk.",
        "ns-605.awsdns-11.net.",
        "ns-225.awsdns-28.com."
      ]
    },
    {
      name = "_amazonses.personescortrecord.service.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "1REyPiQK4r8mfzeKIlHNdhJeyjnpHSBlYvDWqyzktxI="
      ]
    },
    {
      name = "7mkkuyekenxjcklw675hlwvnrv5zccnm._domainkey.personescortrecord.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "7mkkuyekenxjcklw675hlwvnrv5zccnm.dkim.amazonses.com"
      ]
    },
    {
      name = "heydmnhjnczpwn7ufnwmkdv3nrspsf2q._domainkey.personescortrecord.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "heydmnhjnczpwn7ufnwmkdv3nrspsf2q.dkim.amazonses.com"
      ]
    },
    {
      name = "tcbirdbyyr722f5nawvz2i4trwqfw3rg._domainkey.personescortrecord.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "tcbirdbyyr722f5nawvz2i4trwqfw3rg.dkim.amazonses.com"
      ]
    },
    {
      name = "_smtp._tls.personescortrecord.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }
  ]
}

moved {
  from = module.personescortrecord_service_justice_gov_uk.aws_route53_record.default
  to   = module.personescortrecord_service_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.personescortrecord_service_justice_gov_uk.aws_route53_zone.default
  to   = module.personescortrecord_service_justice_gov_uk_zone.aws_route53_zone.this
}
