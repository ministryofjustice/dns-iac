module "judiciary_gov_uk" {
  source = "./modules/route53"

  domain      = "judiciary.gov.uk"
  description = ""

  records = [
    {
      name = "judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "54.228.199.127"
      ]
    },
    {
      name = "judiciary.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "5 mail.dxw.net."
      ]
    },
    {
      name = "judiciary.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-680.awsdns-21.net.",
        "ns-2026.awsdns-61.co.uk.",
        "ns-1357.awsdns-41.org.",
        "ns-66.awsdns-08.com."
      ]
    },
    {
      name = "judiciary.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=spf1 a mx -all"
      ]
    },
    {
      name = "*.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.35.81"
      ]
    },
    {
      name = "_dmarc.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "_dmarc_ttp_policy.justice.gov.uk"
      ]
    },
    {
      name = "harold._domainkey.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "harold._domainkey.dxw.com"
      ]
    },
    {
      name = "harthacnut._domainkey.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "harthacnut._domainkey.dxw.com"
      ]
    },
    {
      name = "_smtp._tls.judiciary.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "b4f72ad226d66a9f38cee9113d1199e8.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "a5a8a7d4d457ae239a965eba005be3cecc488ca0.comodoca.com."
      ]
    },
    {
      name = "bd1b10f8b4635390d7bc59f3ba2e4f06.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "3a21db7d70da3efa742fad3358850edadeb98637.comodoca.com."
      ]
    },
    {
      name = "civiljusticecouncil.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.35.81"
      ]
    },
    {
      name = "familyjusticecouncil.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.35.81"
      ]
    },
    {
      name = "intranet.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "judiciary-intranet.prod.dxw.net."
      ]
    },
    {
      name = "_ecf9157f031ef82308cee8de3c342dbe.intranet.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "_c8bfb16050c2196dda3db635e9e12f84.acm-validations.aws."
      ]
    },
    {
      name = "jac.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "185.40.8.148"
      ]
    },
    {
      name = "5b41c404e841313cec196432b4840c20.jac.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "B95F02FF98260A11C1A8BA319FF4ECF16D9E07AD.comodoca.com."
      ]
    },
    {
      name = "jars.jac.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "185.40.8.147"
      ]
    },
    {
      name = "5b41c404e841313cec196432b4840c20.jars.jac.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "B95F02FF98260A11C1A8BA319FF4ECF16D9E07AD.comodoca.com."
      ]
    },
    {
      name = "judicialcollege.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "92.63.137.91"
      ]
    },
    {
      name = "judicialcollege.judiciary.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "judicialcollege.judiciary.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=spf1 a mx ip4:92.63.137.91 ip6:fe80::d6ae:52ff:fec4:bbab ~all"
      ]
    },
    {
      name = "judicialconduct.judiciary.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-87.awsdns-10.com.",
        "ns-853.awsdns-42.net.",
        "ns-1394.awsdns-46.org.",
        "ns-1747.awsdns-26.co.uk."
      ]
    },
    {
      name = "jwss.judiciary.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z3GKZC51ZF0DB4"
        name                   = "s3-website.eu-west-2.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "uat.residential-property.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "uat.rpts.clients.wtg.co.uk."
      ]
    },
    {
      name = "www.residential-property.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "prod.rpts.clients.wtg.co.uk."
      ]
    },
    {
      name = "search.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "212.44.22.84"
      ]
    },
    {
      name = "sec.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "94.236.26.129"
      ]
    },
    {
      name = "www.sec.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "94.236.26.129"
      ]
    },
    {
      name = "sentencingcouncil.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "sentencing-judiciary.live.bangdynamics.com."
      ]
    },
    {
      name = "search.sentencingcouncil.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "search2.openobjects.com."
      ]
    },
    {
      name = "smtp.judiciary.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "80.86.35.81"
      ]
    },
    {
      name = "webapps.judiciary.gov.uk."
      type = "NS"
      ttl  = 600
      records = [
        "ns-92.awsdns-11.com.",
        "ns-653.awsdns-17.net.",
        "ns-1428.awsdns-50.org.",
        "ns-1586.awsdns-06.co.uk."
      ]
    },
    {
      name = "www.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "judiciary.prod.dxw.net."
      ]
    },
    {
      name = "_6e995847a16897be201558fafeedbbec.www.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "_5a56ee2c7eff246d4a048def7e9e8dee.acm-validations.aws."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
