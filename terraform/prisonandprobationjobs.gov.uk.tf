module "prisonandprobationjobs_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "prisonandprobationjobs.gov.uk."

  tags = {
    component = "None"
  }
}

module "prisonandprobationjobs_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.prisonandprobationjobs_gov_uk_zone.zone_id

  records = [
    {
      name = "prisonandprobationjobs.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.ppj-p-loadb-1v5g2cm5si0du-1234011937.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "prisonandprobationjobs.gov.uk."
      type = "MX"
      ttl  = 600
      records = [
        "1 aspmx.l.google.com.", 
        "5 alt1.aspmx.l.google.com.", 
        "5 alt2.aspmx.l.google.com.", 
        "10 aspmx3.googlemail.com.", 
        "10 aspmx2.googlemail.com."
      ]
    }, 
    {
      name = "prisonandprobationjobs.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-59.awsdns-07.com.", 
        "ns-1200.awsdns-22.org.", 
        "ns-1734.awsdns-24.co.uk.", 
        "ns-554.awsdns-05.net."
      ]
    }, 
    {
      name = "prisonandprobationjobs.gov.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-59.awsdns-07.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "prisonandprobationjobs.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=Cji2TFSPbuvDU9jGTd7bdcKIQQhaY6qaYSPbPauVW-0"
      ]
    }, 
    {
      name = "4lokyq3e6h4r.prisonandprobationjobs.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "gv-h77ed4yem7j6fp.dv.googlehosted.com."
      ]
    }, 
    {
      name = "_479ba9ec1862a427d6eb322f199f7b48.prisonandprobationjobs.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_a908c7c9414b858fb95d100bbbc536c9.acm-validations.aws"
      ]
    }, 
    {
      name = "_asvdns-731f3b3c-f499-4f2a-a07c-9088554d6137.prisonandprobationjobs.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_097f454c-583b-4fb1-b6d8-7919adcad592"
      ]
    }, 
    {
      name = "_dmarc.prisonandprobationjobs.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    }, 
    {
      name = "_smtp._tls.prisonandprobationjobs.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "www.prisonandprobationjobs.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z1VG2XS4QRU068"
        name                   = "prisonandprobationjobs.gov.uk."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_beead804eed69980ba265b0ec54a91f0.www.prisonandprobationjobs.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_6febb02e2ca1986bfb8a1c6a3f108ef0.acm-validations.aws"
      ]
    }
  ]
}