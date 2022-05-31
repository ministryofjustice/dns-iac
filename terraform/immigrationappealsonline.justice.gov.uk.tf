module "immigrationappealsonline_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "immigrationappealsonline.justice.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "immigrationappealsonline_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.immigrationappealsonline_justice_gov_uk_zone.zone_id


  records = [
    {
      name = "immigrationappealsonline.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.iacfees-p-elbhmcts-6jxi2y1j3cgc-1579084157.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "immigrationappealsonline.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1040.awsdns-02.org.",
        "ns-1990.awsdns-56.co.uk.",
        "ns-345.awsdns-43.com.",
        "ns-682.awsdns-21.net.",
      ]
    },
    {
      name = "7a8f57e8e37ab7aa8c12938d93685652.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "003DB0B28DB7F070093DC4241DAD0D6640D02836.comodoca.com"
      ]
    },
    {
      name = "_371f1f3d8945f4bfa19274f8ceab31f4.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "CA4023FEA98228C4EDB091E2BB56CD90.480DDAE2D6792732A2DAD213E567D6C8.456c9caa8ade0846892f.sectigo.com."
      ]
    },
    {
      name = "_bbde749af95f9db428c5643e2a4bb710.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_aeb80b3f8f3963e3506d87496778dd1f.dlgthlwgnp.acm-validations.aws."
      ]
    },
    {
      name = "afdverify.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "dev.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "afdverify.dev.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "staging.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "afdverify.staging.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "waf.immigrationappealsonline.justice.gov.uk."
      type = "CNAME"
      ttl  = 5
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "www.immigrationappealsonline.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.iacfees-p-elbhmcts-6jxi2y1j3cgc-1579084157.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.immigrationappealsonline_justice_gov_uk.aws_route53_record.default
  to   = module.immigrationappealsonline_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.immigrationappealsonline_justice_gov_uk.aws_route53_zone.default
  to   = module.immigrationappealsonline_justice_gov_uk_zone.aws_route53_zone.this
}
