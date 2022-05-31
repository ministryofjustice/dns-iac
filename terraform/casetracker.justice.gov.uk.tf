module "casetracker_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "casetracker.justice.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "casetracker_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.casetracker_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "casetracker.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.civil-loadb-qvbu457dp1b-1835055660.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "casetracker.justice.gov.uk."
      type = "MX"
      ttl  = 60
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "casetracker.justice.gov.uk."
      type = "NS"
      ttl  = 14400
      records = [
        "ns1-04.azure-dns.com.",
        "ns2-04.azure-dns.net.",
        "ns3-04.azure-dns.org.",
        "ns4-04.azure-dns.info."
      ]
    },
    {
      name = "_490401529e094a46111033e0656c3ee9.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_aacbc806a088e7cdff9935f0c9958e9e.auiqqraehs.acm-validations.aws."
      ]
    },
    {
      name = "_600e5e2377e68d232e374d61d059cc14.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "AD4529E305AE3AA9D8FF2F7C65A7DD06.E3AC2E152A7080416872B17FE70F56ED.1a2d4440e811095c0607.sectigo.com."
      ]
    },
    {
      name = "_amazonses.casetracker.justice.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "ALRX0PogwF1WWrc2dWeAnUtxk0Rh5MYx4d6B9psLqSg="
      ]
    },
    {
      name = "afdverify.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "dev.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "afdverify.dev.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "staging.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "afdverify.staging.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "waf.casetracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 5
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    }
  ]
}

moved {
  from = module.casetracker_justice_gov_uk.aws_route53_record.default
  to   = module.casetracker_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.casetracker_justice_gov_uk.aws_route53_zone.default
  to   = module.casetracker_justice_gov_uk_zone.aws_route53_zone.this
}
