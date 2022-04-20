module "data_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "data.justice.gov.uk"
  description = ""

  records = [
    {
      name = "data.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.179.195.142"
      ]
    },
    {
      name = "data.justice.gov.uk."
      type = "NS"
      ttl  = 86400
      records = [
        "ns-1190.awsdns-20.org.",
        "ns-100.awsdns-12.com.",
        "ns-1715.awsdns-22.co.uk.",
        "ns-1012.awsdns-62.net."
      ]
    },
    {
      name = "_0202d4e448b9dc698a779ca6faa760a8.data.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "F5C15BF318A1459FA7FD064E46A8C336.4651BB299FC506838CC583D3533979EF.22ab6168adc1c019f687.comodoca.com."
      ]
    },
    {
      name = "_6e66bde5693afcf24e3c6f6f1eb5d62a.data.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "27D48CD4FAA246277AD492FE0854993E.949CF41E1AFB5F686396AA072AB12A09.21c34fc0440021bd4f98.comodoca.com."
      ]
    },
    {
      name = "staging.data.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.179.195.139"
      ]
    },
    {
      name = "_5bca714aa4f31ca6ad3171441a49df78.staging.data.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "F00A2F4BF99869F259E811402199E9EF.EA33C746851BCADC3109A71ADBA8D566.f04ffa2caf8acc39b74a.comodoca.com."
      ]
    },
    {
      name = "_7f5aa32205bc9a9de08484cd03e76114.staging.data.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "DD99CA518951E849F3B4A497AA80E5E1.3C5848518FA89D5CA460BA8503354CEA.9c58da3f0418ebdb53c0.comodoca.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
