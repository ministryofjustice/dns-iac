module "tribunalsdecisions_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "tribunalsdecisions.service.gov.uk"
  tags = {
    component = "None"
  }
}

module "tribunalsdecisions_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.tribunalsdecisions_service_gov_uk_zone.zone_id

  records = [
    {
      name = "tribunalsdecisions.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.dtsla-utiac-lb-prod-1989357889.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tribunalsdecisions.service.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "tribunalsdecisions.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns1-05.azure-dns.com.",
        "ns2-05.azure-dns.net.",
        "ns3-05.azure-dns.org.",
        "ns4-05.azure-dns.info."
      ]
    },
    {
      name = "tribunalsdecisions.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=OVdc7mAbdiyKqU4kgoFt1LN7jZM8CZMtnzcPd3iv2Mk",
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "24bfb31c2c4515664acaa83026308ac9.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "21f22933f34f706097a921237e044c23d82696ad.comodoca.com."
      ]
    },
    {
      name = "3qq2upma3prq.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "gv-A5CANG52DJ6RZH.dv.googlehosted.com."
      ]
    },
    {
      name = "72559f43db69c1b3522722022a4e88ac.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "7514F5875B8843D2F9D2B73354CF06FBEB05113E.comodoca.com."
      ]
    },
    {
      name = "_082d7cf8ec8daac31a088ca6b34a1491.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "9FFEFB0F7F268AFB1043D7AAB73D903A.C97BD4529863BB11F5BAB717DA15780F.d8f7af3c0b3c87365093.sectigo.com."
      ]
    },
    {
      name = "_8ba7ec9e63838fe3e3d630ce965706b3.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_f26e09f08db0cba807d529c8f96282ad.nxntxfsdbd.acm-validations.aws."
      ]
    },
    {
      name = "_amazonses.tribunalsdecisions.service.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "U93gXD+zD09JNpzyC0c708dmI3608kNWFSDnsLXqppg="
      ]
    },
    {
      name = "_bb8ace67cedf32f565d5c771b0efa0a7.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_3e5b44d91cbed8fff70574fa6f2f74ae.auiqqraehs.acm-validations.aws."
      ]
    },
    {
      name = "_dmarc.tribunalsdecisions.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:yl0zvgmk@ag.dmarcian.com;"
      ]
    },
    {
      name = "smtpapi._domainkey.tribunalsdecisions.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "admin.tribunalsdecisions.service.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1462.awsdns-54.org",
        "ns-1865.awsdns-41.co.uk",
        "ns-642.awsdns-16.net",
        "ns-88.awsdns-11.com"
      ]
    },
    {
      name = "afdverify.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "d1ca871e86e439faf6aea60e908f1b26.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "EF3C36152DB8BD7CB79A7B5468BC8131213A66B7.comodoca.com"
      ]
    },
    {
      name = "email.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.email.tribunalsdecisions.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "o1.email.tribunalsdecisions.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "198.21.4.244"
      ]
    },
    {
      name = "staging.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-dts-la-utiac-staging-312799520.eu-west-1.elb.amazonaws.com"
      ]
    },
    {
      name = "_a247391dcc472ce892d766c34bcd0a5d.staging.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_68e46f5a03a5b05ec12315624753601f.nxntxfsdbd.acm-validations.aws."
      ]
    },
    {
      name = "waf.tribunalsdecisions.service.gov.uk."
      type = "CNAME"
      ttl  = 5
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    }
  ]
}

moved {
  from = module.tribunalsdecisions_service_gov_uk.aws_route53_record.default
  to   = module.tribunalsdecisions_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.tribunalsdecisions_service_gov_uk.aws_route53_zone.default
  to   = module.tribunalsdecisions_service_gov_uk_zone.aws_route53_zone.this
}
