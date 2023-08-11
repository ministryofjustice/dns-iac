module "cjsonline_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "cjsonline.gov.uk."

  tags = {
    component = "None"
  }
}

module "cjsonline_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.cjsonline_gov_uk_zone.zone_id

  records = [
    {
      name = "cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "cjsonline.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "5 mail.cjsonline.gov.uk.", 
        "10 mx1.cjsdigital.org."
      ]
    }, 
    {
      name = "cjsonline.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-344.awsdns-43.com.", 
        "ns-640.awsdns-16.net.", 
        "ns-1031.awsdns-00.org.", 
        "ns-1938.awsdns-50.co.uk."
      ]
    }, 
    {
      name = "cjsonline.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-344.awsdns-43.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "cjsonline.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    }, 
    {
      name = "_asvdns-d92c57be-3602-49cb-a8c8-ee685d9f16d5.cjsonline.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_e65c0950-be14-480b-a94f-20bbc6b68084"
      ]
    }, 
    {
      name = "_dmarc.cjsonline.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    }, 
    {
      name = "*._domainkey.cjsonline.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p="
      ]
    }, 
    {
      name = "_smtp._tls.cjsonline.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "dev-ingest.cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "ingestion-lb-xhibit-portal-968712198.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_1367c223e65598ee8a9f482590a772a1.dev-ingest.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_7bc2aceb39e3f0db59090b760be53da0.cnsgthfrdk.acm-validations.aws."
      ]
    }, 
    {
      name = "dev-pportal.cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "waf-lb-xhibit-portal-403805476.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_431670fb321dfc3aa19fc298c7311d9f.dev-pportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_94acbe0caabc1e9365e556c0b0a6cc8b.cnsgthfrdk.acm-validations.aws."
      ]
    }, 
    {
      name = "monitoring.dev-pportal.cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "prtg-lb-xhibit-portal-2000054797.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_85a23fcd275a38838b2cae36f23e6a04.monitoring.dev-pportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_d9582c48165dcb5e804a8697b934d93a.wsqgzrdths.acm-validations.aws"
      ]
    }, 
    {
      name = "devpportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "waf-lb-xhibit-portal-1686123915.eu-west-2.elb.amazonaws.com"
      ]
    }, 
    {
      name = "ingest.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "ingestion-lb-xhibit-portal-728120087.eu-west-2.elb.amazonaws.com"
      ]
    }, 
    {
      name = "_622d1f334de14c4cbf246abb4fe0dca0.ingest.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_301520326dc4c455e045e07d76dea0fd.cnsgthfrdk.acm-validations.aws."
      ]
    }, 
    {
      name = "mail.cjsonline.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.63.0.102"
      ]
    }, 
    {
      name = "pportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "waf-lb-xhibit-portal-225423796.eu-west-2.elb.amazonaws.com"
      ]
    }, 
    {
      name = "_1f7dff04cdf700b5630730bf9dbed793.pportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_55d4eef7f98d2b71cda03ecee43f82d7.cnsgthfrdk.acm-validations.aws."
      ]
    }, 
    {
      name = "_asvdns-0c976caf-a9a1-4f57-8439-948ccca29979.pportal.cjsonline.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_211608af-e1e0-4aa1-9254-e9e01da528cb"
      ]
    }, 
    {
      name = "monitoring.pportal.cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "prtg-lb-xhibit-portal-1382021580.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_db37705c84abc5dd8e24c75449eed8e9.monitoring.pportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_bfa6c1e5b6a9b8c80cb4479e66540d2f.zxwlrjxpwn.acm-validations.aws."
      ]
    }, 
    {
      name = "ppxp-messaging.cjsonline.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "37.26.89.130"
      ]
    }, 
    {
      name = "ppxpportal.cjsonline.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "37.26.89.131"
      ]
    }, 
    {
      name = "preingest.cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "ingestion-lb-xhibit-portal-1567356007.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_1c73a3eb42980492ae27f3771fde9235.preingest.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_63d48c0766282eba42c70c7a5a20d077.bgpjyrktby.acm-validations.aws."
      ]
    }, 
    {
      name = "prepportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "waf-lb-xhibit-portal-1329956393.eu-west-2.elb.amazonaws.com"
      ]
    }, 
    {
      name = "_765db9241b40f46e7672695c67046712.prepportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_71c74aa5b0fb374f7f4646cf8bd514a8.bgpjyrktby.acm-validations.aws."
      ]
    }, 
    {
      name = "monitoring.prepportal.cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "prtg-lb-xhibit-portal-1640285449.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_813d37606747e1244cd5921b19db29c4.monitoring.prepportal.cjsonline.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_1e5d56e86a6875bddfd1d1034eeae8e8.zxwlrjxpwn.acm-validations.aws"
      ]
    }, 
    {
      name = "useradmin.cjsonline.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "194.176.211.114"
      ]
    }, 
    {
      name = "www.cjsonline.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "xpportal.cjsonline.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.179.223.135"
      ]
    }
  ]
}