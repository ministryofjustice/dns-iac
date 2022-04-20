module "send_money_to_prisoner_service_gov_uk" {
  source = "./modules/route53"

  domain      = "send-money-to-prisoner.service.gov.uk"
  description = "Prisoner Money"

  records = [
    {
      name = "send-money-to-prisoner.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "prod.send-money-to-prisoner.service.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "send-money-to-prisoner.service.gov.uk."
      type = "AAAA"
      alias = {
        zone_id                = "self"
        name                   = "prod.send-money-to-prisoner.service.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "send-money-to-prisoner.service.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "send-money-to-prisoner.service.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-349.awsdns-43.com.",
        "ns-1093.awsdns-08.org.",
        "ns-1742.awsdns-25.co.uk.",
        "ns-887.awsdns-46.net."
      ]
    },
    {
      name = "send-money-to-prisoner.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:mailgun.org ~all"
      ]
    },
    {
      name = "799c07f11c741fb159ee6b68577d14f1.send-money-to-prisoner.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "EECC01E6E63663A0603E2CA9D567B43C7F305A23.comodoca.com."
      ]
    },
    {
      name = "_amazonses.send-money-to-prisoner.service.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "CAMnw7+qtEzvHNeAuXx+L4gtS43fWgkXzEaOjZ+KXmo="
      ]
    },
    {
      name = "_dmarc.send-money-to-prisoner.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
    {
      name = "7dwbslqez2qnl63lh3u7eekzgk7zsaxf._domainkey.send-money-to-prisoner.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "7dwbslqez2qnl63lh3u7eekzgk7zsaxf.dkim.amazonses.com"
      ]
    },
    {
      name = "kozlopo2xycmgzmsuqdzf6lzt57usv6x._domainkey.send-money-to-prisoner.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "kozlopo2xycmgzmsuqdzf6lzt57usv6x.dkim.amazonses.com"
      ]
    },
    {
      name = "mailo._domainkey.send-money-to-prisoner.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuOs26XfsArjkmoN/tAy9OzgZi/ohE8JDaTZFoow6O+ft3ilrkfoWT+duiOUggwO4lPzQ0kFD5yqZeDUGyPOwHFyMRkeAHEruBXAS4hefUR+ZiTVCsKYPQJZ/NuUCU2tkVQ7muKUnLT90ggNu6q0PaTnxxaYUjSfdeyxLUVTxiwwIDAQAB"
      ]
    },
    {
      name = "nhlvjkzjjpwhvckbnxqix6df7p5syr6k._domainkey.send-money-to-prisoner.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "nhlvjkzjjpwhvckbnxqix6df7p5syr6k.dkim.amazonses.com"
      ]
    },
    {
      name = "email.send-money-to-prisoner.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mailgun.org"
      ]
    },
    {
      name = "prod.send-money-to-prisoner.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.money-to-p-elbprod-ozqwc618klrz-672796966.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "prod.send-money-to-prisoner.service.gov.uk."
      type = "AAAA"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.money-to-p-elbprod-ozqwc618klrz-672796966.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
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
