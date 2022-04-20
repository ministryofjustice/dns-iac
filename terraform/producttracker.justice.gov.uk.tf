module "producttracker_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "producttracker.justice.gov.uk"
  description = ""

  records = [
    {
      name = "producttracker.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.moj-produ-elbprodp-d2ropjs5u0fk-1944873465.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "producttracker.justice.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "producttracker.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-58.awsdns-07.com.",
        "ns-2000.awsdns-58.co.uk.",
        "ns-597.awsdns-10.net.",
        "ns-1422.awsdns-49.org."
      ]
    },
    {
      name = "producttracker.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ~all"
      ]
    },
    {
      name = "_amazonses.producttracker.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "zicm2kD310ehPMckMOlRhZTHY3qdTuks7QeS1pvsFCQ="
      ]
    },
    {
      name = "_dmarc.producttracker.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1; p=none; sp=none; pct=100; fo=1; ri=3600; rua=mailto:b966d0e9@inbox.ondmarc.com,mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@digitaljustice.gov.uk; ruf=mailto:b966d0e9@inbox.ondmarc.com,mailto:dmarc-ruf@dmarc.service.gov.uk;"
      ]
    },
    {
      name = "csbmua7q2zisva47u7qntezbcut2l2xp._domainkey.producttracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "csbmua7q2zisva47u7qntezbcut2l2xp.dkim.amazonses.com"
      ]
    },
    {
      name = "w67ooaipewybj4wl2vlnbaf2dgbhe3dq._domainkey.producttracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "w67ooaipewybj4wl2vlnbaf2dgbhe3dq.dkim.amazonses.com"
      ]
    },
    {
      name = "xlvio4g54tcwne2o7xp644bgwkydfdh7._domainkey.producttracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "xlvio4g54tcwne2o7xp644bgwkydfdh7.dkim.amazonses.com"
      ]
    },
    {
      name = "db3ed81ffca7e0cdbb78bb12ce18383b.producttracker.justice.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "F4EAD090047608AF7D1FC1B2F10CCDAD82168C41.comodoca.com."
      ]
    }
  ]

  tags = {
    environment-name = "production"
    is-production    = "true"
    component        = "None"
  }
}
