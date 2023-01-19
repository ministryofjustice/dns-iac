module "ima-citizensrights_org_uk_zone" {
  source = "./modules/route53/zone"

  name        = "ima-citizensrights.org.uk."
  description = "HostedZone created by Route53 Registrar"

  tags = {
  }
}

module "ima-citizensrights_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.ima-citizensrights_org_uk_zone.zone_id

  records = [
    {
      name = "ima-citizensrights.org.uk."
      type = "A"
      ttl  = 275
      records = [
        "80.75.66.241"
      ]
    },
    {
      name = "ima-citizensrights.org.uk."
      type = "AAAA"
      ttl  = 300
      records = [
        "2001:470:6e0a::1b:241"
      ]
    },
    {
      name = "ima-citizensrights.org.uk."
      type = "MX"
      ttl  = 300
      records = [
        "0 imacitizensrights-org-uk0i.mail.protection.outlook.com"
      ]
    },
    {
      name = "ima-citizensrights.org.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-245.awsdns-30.com.",
        "ns-886.awsdns-46.net.",
        "ns-1582.awsdns-05.co.uk.",
        "ns-1514.awsdns-61.org."
      ]
    },
    {
      name = "ima-citizensrights.org.uk."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-245.awsdns-30.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "ima-citizensrights.org.uk."
      type = "SPF"
      ttl  = 300
      records = [
        "v=spf1 mx ip4:194.33.196.0/24 ip4:194.33.192.0/24 include:spf.protection.outlook.com include:_spf.google.com include:spf.mandrillapp.com include:spf.civiccomputing.com -all"
      ]
    },
    {
      name = "ima-citizensrights.org.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "atlassian-domain-verification=eZYa71sfUYC3GKWDAnR6IDBAD7m0PkEaKKOYkM2cjWj8or0XT0PwqvFpqTLtaNby",
        "MS=ms27470079",
        "v=spf1 mx ip4:194.33.196.0/24 ip4:194.33.192.0/24 include:spf.protection.outlook.com include:_spf.google.com include:spf.mandrillapp.com -all",
        "google-site-verification=nK7y7wGdCs855qx_GcyV2pqfwJSQP3E9zGi5yDJ7-O0"
      ]
    },
    {
      name = "_6a19d3849cc84ad68c492edf9ce06d44.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_fb79df8be83f15567abc227eb0b6d426.zbkrxsrfvj.acm-validations.aws."
      ]
    },
    {
      name = "_dmarc.ima-citizensrights.org.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "k2._domainkey.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "dkim2.mcsv.net"
      ]
    },
    {
      name = "k3._domainkey.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "dkim3.mcsv.net"
      ]
    },
    {
      name = "selector1._domainkey.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector1-imacitizensrights-org-uk0i._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "selector2-imacitizensrights-org-uk0i._domainkey.JusticeUK.onmicrosoft.com"
      ]
    },
    {
      name = "website._domainkey.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ima._domainkey.civiccomputing.com."
      ]
    },
    {
      name = "_github-challenge-ministryofjustice-org.ima-citizensrights.org.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "67af5c8e92"
      ]
    },
    {
      name = "_mta-sts.ima-citizensrights.org.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=STSv1; id=5c201b01db4248d4d3f812bf3f0a92a1"
      ]
    },
    {
      name = "_sipfederationtls._tcp.ima-citizensrights.org.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.ima-citizensrights.org.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.ima-citizensrights.org.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "complaints.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ima.powerappsportals.com"
      ]
    },
    {
      name = "_710bc27e73968745e1c79ba48097c7f2.complaints.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "E415E59A376480C605D35D084CD375C2.BC801866BBE9B59E9DB7F490711EF7AF.32c12acc9a2efc3fa896.comodoca.com."
      ]
    },
    {
      name = "_cdf7f484ea8ec896df86fa3017905681.complaints.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "01FF1A252CB1C2CB5E4B227812671097.103B83CA4F18F5A4B06C8E9C3753220C.ef5c7ecb02ee6b0a33db.sectigo.com."
      ]
    },
    {
      name = "_e03a29863ef58d4a2cd9470011fe80f6.complaints.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "B02185CD44D4CEB096657E442BC5C555.59288A8D79BC0DBA9DD4B4EF165C153B.328bcd967480c1e8e902.sectigo.com."
      ]
    },
    {
      name = "enterpriseenrollment.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "mta-sts.ima-citizensrights.org.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "dm0mbeuco7nys.cloudfront.net."
        evaluate_target_health = true
      }
    },
    {
      name = "_34e9ff99a37759d06a070be2480f6d3d.mta-sts.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_e245a2d457108ea09c40ab3c938f4287.rdnyqppgxp.acm-validations.aws."
      ]
    },
    {
      name = "myima.ima-citizensrights.org.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "varnish-alb-1139404551.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "_41cce1d4a52888f266e0114a759afdc1.myima.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_84cb3a58747c57dc2f03f7e987158eaf.qqqfmgwtgn.acm-validations.aws."
      ]
    },
    {
      name = "sip.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "survey.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "imacitizensrights.limequery.org"
      ]
    },
    {
      name = "www.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "civic2-lb.civiccomputing.com."
      ]
    },
    {
      name = "_782a897ac4e4560a030f9d47339019e9.www.ima-citizensrights.org.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_2683db8dfea5f79c61e942fe47e95704.zbkrxsrfvj.acm-validations.aws."
      ]
    }
  ]
}