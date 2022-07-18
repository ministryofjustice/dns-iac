module "ccrc_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "ccrc.gov.uk"
  description = "Tactical Products – mail and ftp subdomains are hosted by Seiretto. MX record is used for mail forwarding at Seiretto."

  tags = {
    component = "None"
  }
}

module "ccrc_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.ccrc_gov_uk_zone.zone_id

  records = [
    {
      name = "ccrc.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "dualstack.jotwp-loadb-1mbwraz503eq6-1769122100.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "ccrc.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 CCRC-gov-uk.mail.protection.outlook.com."
      ]
    },
    {
      name = "ccrc.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-27.awsdns-03.com.",
        "ns-1312.awsdns-36.org.",
        "ns-951.awsdns-54.net.",
        "ns-1703.awsdns-20.co.uk."
      ]
    },
    {
      name = "ccrc.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "MS=ms13510705",
        "moTzn29k+pERDZNgHyOtkGiR+/ckQKBhpJDwsM558yZCe4wETnTgQswUIVDMjxIQrRQyPxznbg0qy6o17si9qQ==",
        "v=spf1 include:spf.protection.outlook.com ip4:80.6.91.150 -all"
      ]
    },
    {
      name = "_5770ab00d5e1032ff7db591706b2f9a5.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_bd266e83797378e89bcbbc42c6974047.jhztdrwbnw.acm-validations.aws."
      ]
    },
    {
      name = "_asvdns-332ae0bd-1b7a-46fd-825b-cfcbda0c2f0c.ccrc.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "asvdns_feca725b-fbca-49e0-8928-f647ef79edb0"
      ]
    },
    {
      name = "_dmarc.ccrc.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=quarantine;rua=mailto:PSm6GLjJ2Yt@dmarc-rua.mailcheck.service.ncsc.gov.uk;"
      ]
    },
    {
      name = "mwn._domainkey.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mwn.domainkey.u25846363.wl114.sendgrid.net"
      ]
    },
    {
      name = "mwn2._domainkey.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mwn2.domainkey.u25846363.wl114.sendgrid.net"
      ]
    },
    {
      name = "mwo._domainkey.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mwo.domainkey.u26084809.wl060.sendgrid.net"
      ]
    },
    {
      name = "mwo2._domainkey.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "mwo2.domainkey.u26084809.wl060.sendgrid.net"
      ]
    },
    {
      name = "selector1._domainkey.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-ccrc-gov-uk._domainkey.ccrcuk.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-ccrc-gov-uk._domainkey.ccrcuk.onmicrosoft.com"
      ]
    },
    {
      name = "_sipfederationtls._tcp.ccrc.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "5061 1 100 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.ccrc.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "443 1 100 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.ccrc.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "connect.ccrc.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "178.239.100.157"
      ]
    },
    {
      name = "em6039.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u25846363.wl114.sendgrid.net"
      ]
    },
    {
      name = "em6531.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u26084809.wl060.sendgrid.net"
      ]
    },
    {
      name = "enterpriseenrollment.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "ftp.ccrc.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "79.170.44.17"
      ]
    },
    {
      name = "lyncdiscover.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "mail.ccrc.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "79.170.44.57"
      ]
    },
    {
      name = "mail2.ccrc.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "20.49.250.153"
      ]
    },
    {
      name = "sip.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "www.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "ccrc.gov.uk"
      ]
    },
    {
      name = "_2966249ff1f7d496b355eabc821707b3.www.ccrc.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_054556e3de8c167ce984f414fdf89e12.jhztdrwbnw.acm-validations.aws."
      ]
    }
  ]
}

moved {
  from = module.ccrc_gov_uk.aws_route53_record.default
  to   = module.ccrc_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.ccrc_gov_uk.aws_route53_zone.default
  to   = module.ccrc_gov_uk_zone.aws_route53_zone.this
}
