module "sendmoneytoaprisoner_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "sendmoneytoaprisoner.justice.gov.uk"
  description = "Prisoner Money"

  records = [
    {
      name = "sendmoneytoaprisoner.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "sendmoneytoaprisoner.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 mxa.mailgun.org",
        "20 mxb.mailgun.org"
      ]
    },
    {
      name = "sendmoneytoaprisoner.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-361.awsdns-45.com.",
        "ns-1912.awsdns-47.co.uk.",
        "ns-1437.awsdns-51.org.",
        "ns-699.awsdns-23.net."
      ]
    },
    {
      name = "sendmoneytoaprisoner.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:mailgun.org ~all"
      ]
    },
    {
      name = "_dmarc.sendmoneytoaprisoner.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1; p=none; pct=100; fo=1; ri=3600; rua=mailto:b966d0e9@inbox.ondmarc.com; ruf=mailto:b966d0e9@inbox.ondmarc.com"
      ]
    },
    {
      name = "smtp._domainkey.sendmoneytoaprisoner.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiKXT4bXJkdvmDtdogyzBSbT0r47xoUdAzKIGXWTpD4fcK73QZg1A/Mya3yOyatd1PQnS5qVCT15TYOBi446xHbGOaWwSrJJv0JfqcJF/oU4xoFVyb5RyEfDrtEVv3VAznjFDQwc8ji8AqKE3/Od0H86hmryF9zE7PfTne/T2uVQIDAQAB"
      ]
    },
    {
      name = "email.sendmoneytoaprisoner.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mailgun.org"
      ]
    }
  ]

  tags = {
    Application            = "money-to-prisoners"
    Env                    = "prod"
    application            = "Money To Prisoners/MTP"
    business-unit          = "HQ"
    component              = "send-money"
    environment-name       = "production"
    infrastructure-support = "Cloud Platforms platforms@digital.justice.gov.uk"
    is-production          = "true"
    owner                  = "Money To Prisoners  money-to-prisoners@digital.justice.gov.uk "
    runbook                = "https://dsdmoj.atlassian.net/wiki/spaces/PLAT/pages/324141273/Money+to+Prisoners"
  }
}
