module "cjsdigital_org_zone" {
  source = "./modules/route53/zone"

  name        = "cjsdigital.org."
  description = "User for MoJD VPN. Owner is Digital Service Desk"

  tags = {
    Application = "MoJD VPN"
    Owner       = "Digital Service Desk"
    component   = "None"
  }
}

module "cjsdigital_org_records" {
  source = "./modules/route53/records"

  zone_id = module.cjsdigital_org_zone.zone_id

  records = [
    {
      name = "cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "94.136.40.51"
      ]
    },
    {
      name = "cjsdigital.org."
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = "cjsdigital.org."
      type = "MX"
      ttl  = 300
      records = [
        "10 mxa.nurvedcloud.net",
        "10 mxb.nurvedcloud.net"
      ]
    },
    {
      name = "cjsdigital.org."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-625.awsdns-14.net.",
        "ns-1799.awsdns-32.co.uk.",
        "ns-507.awsdns-63.com.",
        "ns-1252.awsdns-28.org."
      ]
    },
    {
      name = "cjsdigital.org."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-625.awsdns-14.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "cjsdigital.org."
      type = "SPF"
      ttl  = 300
      records = [
        "v=spf1 mx a ip4:109.70.150.133/32 ip4:109.70.150.134/32 -all"
      ]
    },
    {
      name = "_dmarc.cjsdigital.org."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_smtp._tls.cjsdigital.org."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "dzc.cjsdigital.org."
      type = "TXT"
      ttl  = 300
      records = [
        "NLxvJDC"
      ]
    },
    {
      name = "mail.cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "213.146.137.182"
      ]
    },
    {
      name = "mxa.cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "81.134.202.19"
      ]
    },
    {
      name = "mxb.cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "81.134.202.19"
      ]
    },
    {
      name = "preview.cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "81.134.202.22"
      ]
    },
    {
      name = "vpn.cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "81.134.202.20"
      ]
    },
    {
      name = "webmail.cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "81.134.202.21"
      ]
    },
    {
      name = "www.cjsdigital.org."
      type = "A"
      ttl  = 300
      records = [
        "212.78.84.52"
      ]
    }
  ]
}