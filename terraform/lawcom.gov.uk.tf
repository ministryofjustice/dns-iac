module "lawcom_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "lawcom.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "lawcom_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.lawcom_gov_uk_zone.zone_id

  records = [
    {
      name = "lawcom.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.lawco-loadb-iu5qyqrenlez-1402955435.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "lawcom.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-95.awsdns-11.com.",
        "ns-594.awsdns-10.net.",
        "ns-2034.awsdns-62.co.uk.",
        "ns-1422.awsdns-49.org."
      ]
    },
    {
      name = "_3ff0388722f1072163fc4edb36cb4fec.lawcom.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_ce5444e37666bfe61cfea76e99e67b37.jhztdrwbnw.acm-validations.aws."
      ]
    },
    {
      name = "www.lawcom.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "lawcom.gov.uk"
      ]
    },
    {
      name = "_769650e3afe5cd94b01ffd4bd22fe783.www.lawcom.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_9161035e137135a2529c4ea8caf881f4.jhztdrwbnw.acm-validations.aws."
      ]
    },
    {
      name = "_dmarc.lawcom.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1\\;p=reject\\;sp=reject\\;rua=mailto:dmarc-rua@dmarc.service.gov.uk\\;"
      ]
    },
    {
      name = "lawcom.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
  ]
}

moved {
  from = module.lawcom_gov_uk.aws_route53_record.default
  to   = module.lawcom_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.lawcom_gov_uk.aws_route53_zone.default
  to   = module.lawcom_gov_uk_zone.aws_route53_zone.this
}
