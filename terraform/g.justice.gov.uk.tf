module "g_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "g.justice.gov.uk."
  description = "Secondary domain for Google Apps pilot"

  tags = {
    component = "None"
  }
}

module "g_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.g_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "g.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "1 ASPMX.L.GOOGLE.COM.", 
        "5 ALT1.ASPMX.L.GOOGLE.COM.", 
        "5 ALT2.ASPMX.L.GOOGLE.COM.", 
        "10 ASPMX2.GOOGLEMAIL.COM.", 
        "10 ASPMX3.GOOGLEMAIL.COM."
      ]
    }, 
    {
      name = "g.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-258.awsdns-32.com.", 
        "ns-2040.awsdns-63.co.uk.", 
        "ns-1437.awsdns-51.org.", 
        "ns-930.awsdns-52.net."
      ]
    }, 
    {
      name = "g.justice.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-258.awsdns-32.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=aYAYXwp0mvQFTBCjBOC_ewRCuNd7PtehyIoO0KoulO8", 
        "v=spf1 include:spf.protection.outlook.com include:_spf.google.com ip4:194.33.196.8/32 ip4:194.33.192.8/32 ~all"
      ]
    }, 
    {
      name = "_asvdns-f35df1e8-fb27-432b-a407-9d69f737e817.g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_7959dd88-f035-40b6-ba31-822d8627b5b3"
      ]
    }, 
    {
      name = "_dmarc.g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    }, 
    {
      name = "google._domainkey.g.justice.gov.uk."
      type = "TXT"
      ttl  = 600
      records = [
        "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCoTzSxHJXukDrzv6e1DqOXod/x5q4zX/rieTWt/IRK/BiOJjJKgERhY9k+ipUCnu9q9ykYcMB0pgn4v3ixg3jAG6Tia2H4x/azDxNYbl4kk+JDi8Jqq7v18TKp24a+GbIZNHSX6dY40yzBpTGK6toEDR90fVSzelivtOhQ7BSlRwIDAQAB"
      ]
    }, 
    {
      name = "_mta-sts.g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=f3e2f7bcead73fda65fa4f1ff7815e97"
      ]
    }, 
    {
      name = "_smtp._tls.g.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "mta-sts.g.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "da2bepqjpkqoi.cloudfront.net."
        evaluate_target_health = true
      }
    }, 
    {
      name = "_5e23e840f72dd381dff639da3fb534fe.mta-sts.g.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_6f9ef4ffd36266370e7be090d8539ca6.rdnyqppgxp.acm-validations.aws."
      ]
    }
  ]
}