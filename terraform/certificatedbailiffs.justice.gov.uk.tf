module "certificatedbailiffs_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "certificatedbailiffs.justice.gov.uk"
  description = "Tactical Products"

  tags = {
    component = "None"
  }
}

module "certificatedbailiffs_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.certificatedbailiffs_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "certificatedbailiffs.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.certi-loadb-q2s48nuaqsc6-1478330638.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "certificatedbailiffs.justice.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "certificatedbailiffs.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-01.azure-dns.com.",
        "ns2-01.azure-dns.net.",
        "ns3-01.azure-dns.org.",
        "ns4-01.azure-dns.info."
      ]
    },
    {
      name = "certificatedbailiffs.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ~all"
      ]
    },
    {
      name = "_amazonses.certificatedbailiffs.justice.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "FOXUWuEmOB1ADEH91hgcLFZnrH/CqIzapfHuiBLYn8w="
      ]
    },
    {
      name = "_dmarc.certificatedbailiffs.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "pmu7ozrnis4yz4am7h5ajtluc7xowwrz._domainkey.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "pmu7ozrnis4yz4am7h5ajtluc7xowwrz.dkim.amazonses.com"
      ]
    },
    {
      name = "pwgkg5sim3vhpftchvdv5rjo2hp7ewvw._domainkey.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "pwgkg5sim3vhpftchvdv5rjo2hp7ewvw.dkim.amazonses.com"
      ]
    },
    {
      name = "quak2j4j563yfl5dia7bdhoo774sedki._domainkey.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "quak2j4j563yfl5dia7bdhoo774sedki.dkim.amazonses.com"
      ]
    },
    {
      name = "_ee82371eecb8e896e783555f05b4369e.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "72345E41271D20B240DA14B5A70F0D21.A581642ADBD35E086714BF6E1BCA7CFA.bb33092936ed89497916.sectigo.com."
      ]
    },
    {
      name = "afdverify.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "dev.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "afdverify.dev.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-dev.azurefd.net"
      ]
    },
    {
      name = "e30528988eb5fb837a7d653496718b66.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "A52ABC27E91940E63C9C73D7DFF5C5000C35FF8C.comodoca.com"
      ]
    },
    {
      name = "staging.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "afdverify.staging.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-stg.azurefd.net"
      ]
    },
    {
      name = "waf.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 5
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "www.certificatedbailiffs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "certificatedbailiffs.justice.gov.uk"
      ]
    }
  ]
}

moved {
  from = module.certificatedbailiffs_justice_gov_uk.aws_route53_record.default
  to   = module.certificatedbailiffs_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.certificatedbailiffs_justice_gov_uk.aws_route53_zone.default
  to   = module.certificatedbailiffs_justice_gov_uk_zone.aws_route53_zone.this
}
