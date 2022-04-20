module "courttribunalfinder_service_gov_uk" {
  source = "./modules/route53"

  domain      = "courttribunalfinder.service.gov.uk"
  description = ""

  records = [
    {
      name = "courttribunalfinder.service.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "51.105.37.227"
      ]
    },
    {
      name = "courttribunalfinder.service.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "courttribunalfinder.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1529.awsdns-63.org.",
        "ns-1623.awsdns-10.co.uk.",
        "ns-886.awsdns-46.net.",
        "ns-223.awsdns-27.com."
      ]
    },
    {
      name = "177b47b493cd52229e69ee4b60ed869d.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "C3F530543D143109EBD76B82B9EF9A3927D8CCB9.comodoca.com."
      ]
    },
    {
      name = "4575214e5759ea57e46637286b1208ef.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "8f49fe4e8201ad719abe10f6f393f656b1f678e9.comodoca.com."
      ]
    },
    {
      name = "72559f43db69c1b3522722022a4e88ac.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "7514F5875B8843D2F9D2B73354CF06FBEB05113E.comodoca.com."
      ]
    },
    {
      name = "@.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=41TSY1RWuadllidQw9vOe_azU0T6uX9a15QPGrHQlAg"
      ]
    },
    {
      name = "_acme-challenge.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "6acU22E8EVXc1EDrXII13C69Vo2HlBiCiwfYMZ9nzVA"
      ]
    },
    {
      name = "_amazonses.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "BqBzfrCODg9XeIPUPeDhxmsBlC1SLXWJKvPwmibbrfo=",
        "2EXTraQ2sXL/1GNO9K9qXmmCpusjzUNhAn7K3QVLPMU="
      ]
    },
    {
      name = "_dmarc.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1;p=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "3pzklcbtuhyxsc5dinhq5kubvblhljiw._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "3pzklcbtuhyxsc5dinhq5kubvblhljiw.dkim.amazonses.com"
      ]
    },
    {
      name = "ayv2jpfiqsu3livtomh2bdj2nfwly3ia._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "ayv2jpfiqsu3livtomh2bdj2nfwly3ia.dkim.amazonses.com"
      ]
    },
    {
      name = "btcmx6z2ebavgmlfhmwpakkthjqgz7gg._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "btcmx6z2ebavgmlfhmwpakkthjqgz7gg.dkim.amazonses.com"
      ]
    },
    {
      name = "m5xihbi26yei5mymduai6k4bhctsbksa._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "m5xihbi26yei5mymduai6k4bhctsbksa.dkim.amazonses.com"
      ]
    },
    {
      name = "s1._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s1.domainkey.u2537938.wl189.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s2.domainkey.u2537938.wl189.sendgrid.net"
      ]
    },
    {
      name = "vb52kjstha4xnfv2zpp6a5gxulgawfuw._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "vb52kjstha4xnfv2zpp6a5gxulgawfuw.dkim.amazonses.com"
      ]
    },
    {
      name = "zv4raobjw2kgkk5rhc2equscyuykdiu6._domainkey.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "zv4raobjw2kgkk5rhc2equscyuykdiu6.dkim.amazonses.com"
      ]
    },
    {
      name = "_e38863bd8d1d0d7ae7d1aae755b653bc.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "50AA0E44E90C85F19671ED798BCD3F8C.3FB441B536FC6DC6B8CF572AF90B29AC.5f9491903a313d3a99f8.comodoca.com."
      ]
    },
    {
      name = "_smtp._tls.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "admin.courttribunalfinder.service.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-790.awsdns-34.net",
        "ns-225.awsdns-28.com",
        "ns-1601.awsdns-08.co.uk",
        "ns-1415.awsdns-48.org"
      ]
    },
    {
      name = "baf4568329fde568a82ecb7da2daa334.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "D3ED75317E1C7512F335C6B1992616AC7652A4D5.comodoca.com."
      ]
    },
    {
      name = "beta.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "courtfinder-production-187177264.eu-west-1.elb.amazonaws.com"
      ]
    },
    {
      name = "stack.active.courtfinder-dev.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "2c747b6c"
      ]
    },
    {
      name = "stack.38a18cb8.courtfinder-prod.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "38a18cb8"
      ]
    },
    {
      name = "stack.99ec1e43.courtfinder-prod.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "99ec1e43"
      ]
    },
    {
      name = "stack.active.courtfinder-prod.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "f5b1711c"
      ]
    },
    {
      name = "stack.0a4e0519.courtfinder-staging.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "0a4e0519"
      ]
    },
    {
      name = "stack.active.courtfinder-staging.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "dc5f8e4d"
      ]
    },
    {
      name = "stack.c23e53be.courtfinder-staging.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "c23e53be"
      ]
    },
    {
      name = "deployarn.active.dev.courtfinder.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/courtfinder-dev-2c747b6c-CrossAccountRole-151534ZATPQF6"
      ]
    },
    {
      name = "deployarn.active.prod.courtfinder.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/courtfinder-prod-f5b1711c-CrossAccountRole-1PI2I8DEGZZHE"
      ]
    },
    {
      name = "deployarn.active.staging.courtfinder.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/courtfinder-staging-dc5f8e4d-CrossAccountRole-6BX6WNAI0HKC"
      ]
    },
    {
      name = "d1ca871e86e439faf6aea60e908f1b26.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "EF3C36152DB8BD7CB79A7B5468BC8131213A66B7.comodoca.com"
      ]
    },
    {
      name = "em4012.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u2537938.wl189.sendgrid.net"
      ]
    },
    {
      name = "hw2mzkztnolp.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "gv-GZOZJQ7EPKTJB2.dv.googlehosted.com."
      ]
    },
    {
      name = "old.courttribunalfinder.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.105.37.227"
      ]
    },
    {
      name = "staging.courttribunalfinder.service.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z3NF1Z3NOM5OY2"
        name                   = "courtfind-elbstagi-135xkcp7mk98p-778916969.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "test-release.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "www.find-court-tribunal.service.gov.uk"
      ]
    },
    {
      name = "_e38863bd8d1d0d7ae7d1aae755b653bc.www.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "50AA0E44E90C85F19671ED798BCD3F8C.3FB441B536FC6DC6B8CF572AF90B29AC.5f9491903a313d3a99f8.comodoca.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
