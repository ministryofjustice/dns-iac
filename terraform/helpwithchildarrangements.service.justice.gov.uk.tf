module "helpwithchildarrangements_service_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "helpwithchildarrangements.service.justice.gov.uk"
  description = ""

  records = [
    {
      name = "helpwithchildarrangements.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZD4D7Y8KGAS4G"
        name                   = "aef1937c1a95711e98cdd0aaafbe3d46-9b185ef26eadab0b.elb.eu-west-2.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "helpwithchildarrangements.service.justice.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "helpwithchildarrangements.service.justice.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-1418.awsdns-49.org.",
        "ns-79.awsdns-09.com.",
        "ns-1877.awsdns-42.co.uk.",
        "ns-933.awsdns-52.net."
      ]
    },
    {
      name = "_amazonses.helpwithchildarrangements.service.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "8QdHpRe/opdWSrP0gTP8EwCUUqLl4HLtOgrdMSuk3gI="
      ]
    },
    {
      name = "fdk2x3e3yyczywnhydoisxopkpodfyqq._domainkey.helpwithchildarrangements.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "fdk2x3e3yyczywnhydoisxopkpodfyqq.dkim.amazonses.com"
      ]
    },
    {
      name = "jzhpirzmazgj4rubgbawrzlr723imymw._domainkey.helpwithchildarrangements.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "jzhpirzmazgj4rubgbawrzlr723imymw.dkim.amazonses.com"
      ]
    },
    {
      name = "mlif2krrhjvgxvq4veeubkqp4tkpjqau._domainkey.helpwithchildarrangements.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "mlif2krrhjvgxvq4veeubkqp4tkpjqau.dkim.amazonses.com"
      ]
    },
    {
      name = "_external_dns.helpwithchildarrangements.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "heritage=external-dns,external-dns/owner=default,external-dns/resource=ingress/fj-cait-production/fj-cait-ingress-production"
      ]
    }
  ]
}
