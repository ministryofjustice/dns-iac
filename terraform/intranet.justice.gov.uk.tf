module "intranet_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "intranet.justice.gov.uk"
  description = ""

  records = [
    {
      name = "intranet.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.intra-loadb-1vuugtgd901a4-9454459.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "intranet.justice.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "0 ."
      ]
    },
    {
      name = "intranet.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-63.awsdns-07.com.",
        "ns-1367.awsdns-42.org.",
        "ns-913.awsdns-50.net.",
        "ns-1689.awsdns-19.co.uk."
      ]
    },
    {
      name = "intranet.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_amazonses.intranet.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "MVEdwK6GfA9rSgTEanc+3OeFWxUTw8zXH4OtnO4Pjyg="
      ]
    },
    {
      name = "_dmarc.intranet.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk;"
      ]
    },
    {
      name = "3l4nzmvtmwandpygxl7j2qlvqmtusryd._domainkey.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "3l4nzmvtmwandpygxl7j2qlvqmtusryd.dkim.amazonses.com"
      ]
    },
    {
      name = "*._domainkey.intranet.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p="
      ]
    },
    {
      name = "brzpojnhmffbxgfaj63qfnvzmhzw5gaw._domainkey.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "brzpojnhmffbxgfaj63qfnvzmhzw5gaw.dkim.amazonses.com"
      ]
    },
    {
      name = "buk33d2avpbyyqpitsptbbxxvjqym67a._domainkey.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "buk33d2avpbyyqpitsptbbxxvjqym67a.dkim.amazonses.com"
      ]
    },
    {
      name = "_ef76ae985bbcaaeab415aa727e238bd3.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_9696659a7f7af61820dfcd3d7d3b11d7.jhztdrwbnw.acm-validations.aws."
      ]
    },
    {
      name = "_smtp._tls.intranet.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "hmpps.intranet.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "hmpps-sip-prod-web-alb-01-272041428.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "hmpps.intranet.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:amazonses.com -all"
      ]
    },
    {
      name = "_8419399303dec2c429e03b67b2876d9f.hmpps.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_0c6f486fe1b1951030bcd4fb190fbe66.chvvfdvqrj.acm-validations.aws"
      ]
    },
    {
      name = "_amazonses.hmpps.intranet.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "8h7KXrMPUVTY7KuYo44astT0GQ8v2ie8fnNnHROqumM="
      ]
    },
    {
      name = "k3zar4kkpli42qr5llkklb4vniee4nvy._domainkey.hmpps.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "k3zar4kkpli42qr5llkklb4vniee4nvy.dkim.amazonses.com"
      ]
    },
    {
      name = "m6kudchk2qephv3kspw7hoq4hncmc7nh._domainkey.hmpps.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "m6kudchk2qephv3kspw7hoq4hncmc7nh.dkim.amazonses.com"
      ]
    },
    {
      name = "mv5fljaqkoyxx2ymqv4hjze62bsczywf._domainkey.hmpps.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mv5fljaqkoyxx2ymqv4hjze62bsczywf.dkim.amazonses.com"
      ]
    },
    {
      name = "test3.intranet.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.intra-loadb-1vuugtgd901a4-9454459.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "www.intranet.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.intra-loadb-1vuugtgd901a4-9454459.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_c4588e06b18aaa08a3216ec2f416a48a.www.intranet.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_b273edbb80229cf8a6d790e16b5c1a82.jhztdrwbnw.acm-validations.aws."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
