module "judiciary_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "judiciary.gov.uk."

  tags = {
    component = "None"
  }
}

module "judiciary_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.judiciary_gov_uk_zone.zone_id

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
      type = "SOA"
      ttl  = 900
      records = [
        "ns-680.awsdns-21.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
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
      name = "_asvdns-cb10da53-2de4-487a-a1b4-57153a8e61dd.judiciary.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_af3cf630-cda8-48ff-b13b-64ffaf4081f0"
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
      name = "_asvdns-48f77fb9-0ff2-4e27-a4d6-eb45fc4f5650.jac.judiciary.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_0839f265-f8c2-4150-817e-548c17b1c672"
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
      name = "judicialcollege.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "judicial.kineoedition.com"
      ]
    }, 
    {
      name = "_asvdns-58106a05-6126-420c-aa95-94ec8d91c043.judicialcollege.judiciary.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_ad780ef1-a19c-49dc-a4a5-0e05189c27db"
      ]
    }, 
    {
      name = "_dmarc.judicialcollege.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "dmarc.mail.judicial.kineoedition.com"
      ]
    }, 
    {
      name = "kineolms._domainkey.judicialcollege.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "dkim.mail.judicial.kineoedition.com"
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
      name = "_asvdns-7a6d1dd3-7e08-4a4c-b9a1-1259324aea2b.jwss.judiciary.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_988aea57-b101-4fe0-8dc6-aa32644d7099"
      ]
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
        "redirect.dxw.net"
      ]
    }, 
    {
      name = "_6e995847a16897be201558fafeedbbec.www.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "_5a56ee2c7eff246d4a048def7e9e8dee.acm-validations.aws."
      ]
    }, 
    {
      name = "_f9a2000001cb4381c8449175c6c006de.www.judiciary.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_370324631239f747b5a0cd725e8f7afe.rvctyfnwhz.acm-validations.aws."
      ]
    }
  ]
}