module "courtfines_direct_gov_uk" {
  source = "./modules/route53"

  domain      = "courtfines.direct.gov.uk"
  description = ""

  records = [
    {
      name = "courtfines.direct.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.court-loadb-8mcola2l2by0-173012739.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "courtfines.direct.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-04.azure-dns.com.",
        "ns2-04.azure-dns.net.",
        "ns3-04.azure-dns.org.",
        "ns4-04.azure-dns.info."
      ]
    },
    {
      name = "5db40439763068346b20d34fedc31a86.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "6859784BBBC3B49A80943DC6C5C86D5EE3539675.comodoca.com"
      ]
    },
    {
      name = "_975286e3bc1ca6804128ccd7c48c89ac.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_308970e3209ac38b43bc563e49f2ccfc.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "_b4ea623315964a50a23f187bd334f9d9.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "C7F1910064BE0BA04A12C876149B10F0.2F52114FFC00B0A8C8AA4BAE25E0E83E.d4151b70cc2dec1acf2b.sectigo.com."
      ]
    },
    {
      name = "_fd42bbf0088b6b64004ae5ea5bb52833.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_7ac7c4084a84f98a030c53171ecd735d.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "afdverify.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "dev.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "afdverify.dev.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "staging.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "afdverify.staging.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "waf.courtfines.direct.gov.uk."
      type = "CNAME"
      ttl  = 5
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
