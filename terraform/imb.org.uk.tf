module "imb_org_uk_zone" {
  source = "./modules/route53/zone"

  name = "imb.org.uk"
  tags = {
    component = "None"
  }
}

module "imb_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.imb_org_uk_zone.zone_id

  records = [
    {
      name = "imb.org.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-2.id
        name                   = "jotwp-loadb-1mbwraz503eq6-1769122100.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "imb.org.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "imb.org.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-274.awsdns-34.com.",
        "ns-1464.awsdns-55.org.",
        "ns-1559.awsdns-02.co.uk.",
        "ns-687.awsdns-21.net."
      ]
    },
    {
      name = "imb.org.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-274.awsdns-34.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "imb.org.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "_a17f291094c56738f53f60414269a15f.imb.org.uk"
      type = "CNAME"
      ttl  = 60
      records = [
        "_8434a359b8481c5767ade4985b20f14c.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "_amazonses.imb.org.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "DfZptPG81IShblj0yJ1jmGiqOOPyFuJQdNluGjeUi+w="
      ]
    },
    {
      name = "_dmarc.imb.org.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "_smtp._tls.imb.org.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "my.imb.org.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "imbmembers.prod.wp.dsd.io"
      ]
    },
    {
      name = "_3fc8a2dfb41e5703485146ebfdc6fe3d.my.imb.org.uk"
      type = "CNAME"
      ttl  = 60
      records = [
        "_25ce653534cfe69d486bf5196e4c76d8.hkvuiqjoua.acm-validations.aws."
      ]
    },
    {
      name = "www.imb.org.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "imb.org.uk"
      ]
    },
    {
      name = "_bfd2574796bb803800192be042cb12fa.www.imb.org.uk"
      type = "CNAME"
      ttl  = 60
      records = [
        "_f39b2d1c51943d6f617b24ded0373daa.hkvuiqjoua.acm-validations.aws."
      ]
    },
  ]
}
