module "find_legal_advice_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "find-legal-advice.justice.gov.uk"
  description = ""

  records = [
    {
      name = "find-legal-advice.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2IFOLAFXWLO4F"
        name                   = "a282d9b3b39e111e9a0b0029499f5b15-f09dead0db7cdae8.elb.eu-west-1.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "find-legal-advice.justice.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "find-legal-advice.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-400.awsdns-50.com.",
        "ns-850.awsdns-42.net.",
        "ns-1717.awsdns-22.co.uk.",
        "ns-1029.awsdns-00.org."
      ]
    },
    {
      name = "find-legal-advice.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ~all"
      ]
    },
    {
      name = "_amazonses.find-legal-advice.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "cWGAn12cHdtAHF9NUakRd1lO9j9m+ya+2BgegMRPScU="
      ]
    },
    {
      name = "_dmarc.find-legal-advice.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "bc2udc45lpdwwdhvq56iuvmwv3zd2cbx._domainkey.find-legal-advice.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "bc2udc45lpdwwdhvq56iuvmwv3zd2cbx.dkim.amazonses.com"
      ]
    },
    {
      name = "je23fboxjar6gxner4mxnhwsss4rgttp._domainkey.find-legal-advice.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "je23fboxjar6gxner4mxnhwsss4rgttp.dkim.amazonses.com"
      ]
    },
    {
      name = "qme7k3hwy4zau3pswmogm56k6kvlrcyr._domainkey.find-legal-advice.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "qme7k3hwy4zau3pswmogm56k6kvlrcyr.dkim.amazonses.com"
      ]
    },
    {
      name = "_external_dns.find-legal-advice.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "heritage=external-dns,external-dns/owner=default,external-dns/resource=ingress/laa-fala-production/laa-fala"
      ]
    },
    {
      name = "dev.find-legal-advice.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.fala-stag-elbstagi-1lq7naczi1jen-1794151298.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "www.find-legal-advice.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.fala-prod-elbprod-eyycug0ke4f5-2026981133.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    application = "Find a Legal Adviser/fala"
    business-unit = "HMCTS"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner = "HMCTS sustainingteamsupport@hmcts.net"
    component = "None"
  }
}
