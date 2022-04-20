module "checklegalaid_service_gov_uk" {
  source = "./modules/route53"

  domain      = "checklegalaid.service.gov.uk"
  description = ""

  records = [
    {
      name = "checklegalaid.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2IFOLAFXWLO4F"
        name                   = "a282d9b3b39e111e9a0b0029499f5b15-f09dead0db7cdae8.elb.eu-west-1.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "checklegalaid.service.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "checklegalaid.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1222.awsdns-24.org.",
        "ns-382.awsdns-47.com.",
        "ns-560.awsdns-06.net.",
        "ns-2040.awsdns-63.co.uk."
      ]
    },
    {
      name = "2969e7609b4d20b8525a155a7a571b40.checklegalaid.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "6B61987181EA587DA12CC2D260047F30AE8422B5.comodoca.com"
      ]
    },
    {
      name = "_43d98eda8a1e8510c752414b473800e9.checklegalaid.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "E285F6B3908C742BAE9B8498E1DFEA01.8CC2D03F6D2C7E06C8E3F08D5B121CBB.7d37940a0260eac65b7a.comodoca.com."
      ]
    },
    {
      name = "_amazonses.checklegalaid.service.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "AUTzEXGQbCT8s5YqiVwHx5OhKJYb64+NkhCP3SOxToc="
      ]
    },
    {
      name = "_dmarc.checklegalaid.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_external_dns.checklegalaid.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "heritage=external-dns,external-dns/owner=default,external-dns/resource=ingress/laa-cla-public-production/laa-cla-public"
      ]
    },
    {
      name = "_smtp._tls.checklegalaid.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }
  ]

  tags = {
    application            = "Civil Legal Advice/CLA"
    business-unit          = "HQ"
    component           = "None"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    owner                  = "None"
  }
}
