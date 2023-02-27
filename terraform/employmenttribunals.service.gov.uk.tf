module "employmenttribunals_service_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "employmenttribunals.service.gov.uk"
  tags = {
    application            = "Employment Tribunal/ET Application for Applying To an Employment Tribunal/ATET "
    business-unit          = "HMCTS"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
    component              = "None"
  }
}

module "employmenttribunals_service_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.employmenttribunals_service_gov_uk_zone.zone_id

  records = [
    {
      name = "employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.140.1.205"
      ]
    },
    {
      name = "employmenttribunals.service.gov.uk."
      type = "CAA"
      ttl  = 300
      records = [
        "0 issue \"sectigo.com\"",
        "0 issuewild \"sectigo.com\"",
        "0 issue \"letsencrypt.org\"",
        "0 issuewild \"letsencrypt.org\""
      ]
    },
    {
      name = "employmenttribunals.service.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 ec2-54-229-105-110.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "employmenttribunals.service.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-951.awsdns-54.net.",
        "ns-1347.awsdns-40.org.",
        "ns-1693.awsdns-19.co.uk.",
        "ns-112.awsdns-14.com."
      ]
    },
    {
      name = "employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=spf1 include:sendgrid.net ~all",
        "Test1"
      ]
    },
    {
      name = "_287de52247331a1c82ec0d7a17d23062.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_3a28a5161886334036abd7d1a375149e.acm-validations.aws"
      ]
    },
    {
      name = "_42a3282d43b8295b62c782aca9f7b959.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_6a609acbc87ce09f457670892e6f4293.acm-validations.aws"
      ]
    },
    {
      name = "_acme-challenge.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "5_mrLqEmqD-S2fbifNVByEGT5PiHaGvOTvBYv-c1fpw",
        "YBJEvKaifhAV9P_iwrAYXOofLo9MjM3TVcE8CxM2IEw"
      ]
    },
    {
      name = "_dmarc.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1;p=reject; sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:yl0zvgmk@ag.dmarcian.com;"
      ]
    },
    {
      name = "s1._domainkey.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s1.domainkey.u22046801.wl052.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s2.domainkey.u22046801.wl052.sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "admin.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.140.1.205"
      ]
    },
    {
      name = "_24063ac7c597d15e1fff2e90919e7e7d.admin.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_f8e98907e96826a5213385954f948008.acm-validations.aws."
      ]
    },
    {
      name = "_acme-challenge.admin.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "XeXiowDkdUvn9ZHJVj5b2_dttVgpMmXxVxS6sRvKVZc"
      ]
    },
    {
      name = "api.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.140.1.205"
      ]
    },
    {
      name = "_24bd320e3235fd4b51138ea6e5b6516c.api.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_d012d64ecacc89c76f40d96e17a1d404.acm-validations.aws."
      ]
    },
    {
      name = "_acme-challenge.api.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "kQc4rU2bVGoQGpkpGyKnDeqyGbA0SWffWdcwXoDY8ZY"
      ]
    },
    {
      name = "atos-api.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.140.1.205"
      ]
    },
    {
      name = "_66615b4245e4b2ed78417e73da81e5a6.atos-api.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_eba3937c1c49c69e1885d9e2c75343bc.acm-validations.aws."
      ]
    },
    {
      name = "_acme-challenge.atos-api.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "cq2knrQw_Znp1TMI7bitGzCHRszrEON3Ab84UzM55sc"
      ]
    },
    {
      name = "cc.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "208.50.51.117"
      ]
    },
    {
      name = "e3cc540ff75af5df348c72cd1488ae91.02b21a4a40e02f9980d7ac99050e63c3.a7ce4026f43a4491f128.comodoca.com.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "E3CC540FF75AF5DF348C72CD1488AE91.02B21A4A40E02F9980D7AC99050E63C3.a7ce4026f43a4491f128.comodoca.com."
      ]
    },
    {
      name = "em4285.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u22046801.wl052.sendgrid.net"
      ]
    },
    {
      name = "email.employmenttribunals.service.gov.uk."
      type = "CAA"
      ttl  = 3600
      records = [
        "0 issue \"sectigo.com\"",
        "0 issuewild \"sectigo.com\""
      ]
    },
    {
      name = "_189994288a5c50db8b62be3d3a1752d0.email.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ecaa92b78488be8cccca480e8143cff5.d90e067e8c7df1cdd0f9dc9be0d0847c.ea81a3d20bf98ef2c9be.comodoca.com"
      ]
    },
    {
      name = "_2670a4cfbb3737e1201c25cbf3fadcfb.email.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "4D0A08849F2859B551718330B17607A4.D369437E19644C20FCE26EE8C5C7336B.1671f1468c94ff1c45e2.comodoca.com."
      ]
    },
    {
      name = "smtpapi._domainkey.email.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "o1.email.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "198.21.4.244"
      ]
    },
    {
      name = "deployarn.active.prod.et3.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "arn:aws:iam::903817190142:role/et3-prod-d44c5f9d-CrossAccountRole-CQ1SZDAPS7SO"
      ]
    },
    {
      name = "etapi.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 900
      records = [
        "208.50.51.116"
      ]
    },
    {
      name = "fe3c5c371c8a61089a1ed0be6cb7b95c.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "0F37B42DBA02639806A7ED9F2DCCFB3BC12A6B92.comodoca.com"
      ]
    },
    {
      name = "ftapi.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "208.50.51.117"
      ]
    },
    {
      name = "74c77da91f519c422469d93e2f431c03.ftapi.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "8186D9F8CC3AA49738C7F8086CBB93C779E08A91.comodoca.com."
      ]
    },
    {
      name = "legacy-cc.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "208.50.51.117"
      ]
    },
    {
      name = "legacy.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "208.50.51.116"
      ]
    },
    {
      name = "trial.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "prod-rails-gov-1835494988.eu-west-1.elb.amazonaws.com"
      ]
    },
    {
      name = "tribunal-response.employmenttribunals.service.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.140.1.205"
      ]
    },
    {
      name = "_189994288a5c50db8b62be3d3a1752d0.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ecaa92b78488be8cccca480e8143cff5.d90e067e8c7df1cdd0f9dc9be0d0847c.ea81a3d20bf98ef2c9be.comodoca.com"
      ]
    },
    {
      name = "_2670a4cfbb3737e1201c25cbf3fadcfb.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "4D0A08849F2859B551718330B17607A4.D369437E19644C20FCE26EE8C5C7336B.1671f1468c94ff1c45e2.comodoca.com."
      ]
    },
    {
      name = "_6f9bf88bc87b7bcf669fe25c707b7396.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_d11c45ee955eac9e1ad3efd6d5975687.acm-validations.aws"
      ]
    },
    {
      name = "_a9a2f656ca886584bb4d3083bcd8c199.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "1342A260D36F76CD5AB0A9E848A28806.5091A430766EC46216DC45970C9B76AC.24bea84d52e6a1f8025e.comodoca.com."
      ]
    },
    {
      name = "_c03dcba2827217dda997587cdb33af13.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "E3CC540FF75AF5DF348C72CD1488AE91.02B21A4A40E02F9980D7AC99050E63C3.a7ce4026f43a4491f128.comodoca.com."
      ]
    },
    {
      name = "_db0cfd0af79d1b674ad9e10718f91c99.admin.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_239cca16f4e6b6b3fe6eee36ee25edbe.acm-validations.aws."
      ]
    },
    {
      name = "_68ea0445e4ce04bd4a91594f7fbc1b8f.api.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_c8fb93612965b4a95eccce9eab9f5494.acm-validations.aws."
      ]
    },
    {
      name = "_7b7c660de41789d9473b3cd0281055e6.www.tribunal-response.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_cb44f1384de3f1523194f981785fca65.acm-validations.aws."
      ]
    },
    {
      name = "usertest.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "etfees-walkthrough.s3-website-eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "www.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "employmenttribunals.service.gov.uk"
      ]
    },
    {
      name = "_189994288a5c50db8b62be3d3a1752d0.www.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ecaa92b78488be8cccca480e8143cff5.d90e067e8c7df1cdd0f9dc9be0d0847c.ea81a3d20bf98ef2c9be.comodoca.com"
      ]
    },
    {
      name = "_2670a4cfbb3737e1201c25cbf3fadcfb.www.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "4D0A08849F2859B551718330B17607A4.D369437E19644C20FCE26EE8C5C7336B.1671f1468c94ff1c45e2.comodoca.com."
      ]
    },
    {
      name = "_a9a2f656ca886584bb4d3083bcd8c199.www.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "1342A260D36F76CD5AB0A9E848A28806.5091A430766EC46216DC45970C9B76AC.24bea84d52e6a1f8025e.comodoca.com."
      ]
    },
    {
      name = "_acme-challenge.www.employmenttribunals.service.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "4ko0nd3tPUt3PZi0ebzNEc5XEAKr3MFxMPBqL6YiFiA"
      ]
    },
    {
      name = "_c03dcba2827217dda997587cdb33af13.www.employmenttribunals.service.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "E3CC540FF75AF5DF348C72CD1488AE91.02B21A4A40E02F9980D7AC99050E63C3.a7ce4026f43a4491f128.comodoca.com."
      ]
    }
  ]
}

moved {
  from = module.employmenttribunals_service_gov_uk.aws_route53_record.default
  to   = module.employmenttribunals_service_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.employmenttribunals_service_gov_uk.aws_route53_zone.default
  to   = module.employmenttribunals_service_gov_uk_zone.aws_route53_zone.this
}
