module "checklegalaid_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "checklegalaid.service.gov.uk"
  tags = {
    application            = "Civil Legal Advice/CLA"
    business-unit          = "HQ"
    component              = "None"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    owner                  = "None"
  }
}

module "checklegalaid_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.checklegalaid_service_gov_uk_zone.zone_id

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
}

moved {
  from = module.checklegalaid_service_gov_uk.aws_route53_record.default
  to   = module.checklegalaid_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.checklegalaid_service_gov_uk.aws_route53_zone.default
  to   = module.checklegalaid_service_gov_uk_zone.aws_route53_zone.this
}
