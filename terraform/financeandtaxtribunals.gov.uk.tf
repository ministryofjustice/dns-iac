module "financeandtaxtribunals_gov_uk_zone" {
  source = "./modules/route53/zone"

  name        = "financeandtaxtribunals.gov.uk"
  description = "Tribunals decisions database"

  tags = {
    application            = "Tax Tribunals"
    business-unit          = "HMCTS"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
    component              = "None"
  }
}

module "financeandtaxtribunals_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.financeandtaxtribunals_gov_uk_zone.zone_id

  records = [
    {
      name = "financeandtaxtribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "financeandtaxtribunals.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "financeandtaxtribunals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-443.awsdns-55.com.",
        "ns-1410.awsdns-48.org.",
        "ns-1008.awsdns-62.net.",
        "ns-1766.awsdns-28.co.uk."
      ]
    },
    {
      name = "_acme-challenge.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "uq5s_fJvCpbz3XExy6P61dNOsYuybCx8mjJWaHgGRKM"
      ]
    },
    {
      name = "_amazonses.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "/Y8ldG5+FGQeLLzD9m92oJSU0fBVSNhVvzyG2HFg8N0="
      ]
    },
    {
      name = "_dmarc.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk"
      ]
    },
    {
      name = "gjiugiuoku4g2nkjwdl2zjsgb4xctmec._domainkey.financeandtaxtribunals.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "gjiugiuoku4g2nkjwdl2zjsgb4xctmec.dkim.amazonses.com"
      ]
    },
    {
      name = "n6fafodof3uhnngkluvfp4argwu7dpya._domainkey.financeandtaxtribunals.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "n6fafodof3uhnngkluvfp4argwu7dpya.dkim.amazonses.com"
      ]
    },
    {
      name = "toe7765ielyjz2sirdtopbzr65mjg47v._domainkey.financeandtaxtribunals.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "toe7765ielyjz2sirdtopbzr65mjg47v.dkim.amazonses.com"
      ]
    },
    {
      name = "_smtp._tls.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "downloader-a4ae59a5.financeandtaxtribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbdownl-ehszr9vif021-432191533.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "downloader.financeandtaxtribunals.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "51.140.165.14"
      ]
    },
    {
      name = "_4416e320d11c5c898a5a17f5b96495f2.downloader.financeandtaxtribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dd3bf653ffa210f1fccce41df71c0010.acm-validations.aws."
      ]
    },
    {
      name = "_a4d1c79e07d254f42554e177169a67ef.downloader.financeandtaxtribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "78FD839CEF99EACF39155B98A287D581.145FF1BECB4321D9C6C8E6F3535C77A8.0d43f5cbdcf4166b6d53.comodoca.com."
      ]
    },
    {
      name = "dssa-nle.financeandtaxtribunals.gov.uk."
      type = "A"
      ttl  = 60
      records = [
        "51.11.150.4"
      ]
    },
    {
      name = "_acme-challenge.dssa-nle.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 1
      records = [
        "M8Yw9mhJ9wWcAaHfSNH6wBtPbElksWrpycWBJ5BCwUI"
      ]
    },
    {
      name = "dssa.financeandtaxtribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.145.29.81"
      ]
    },
    {
      name = "internal.dssa.financeandtaxtribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "10.14.0.13"
      ]
    },
    {
      name = "stack.a4ae59a5.tax-tribunals-uploader-downloader-prod.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "a4ae59a5"
      ]
    },
    {
      name = "stack.active.tax-tribunals-uploader-downloader-prod.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "a4ae59a5"
      ]
    },
    {
      name = "deployarn.a4ae59a5.prod.tax-tribunals-uploader-downloader.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/tax-tribunals-uploader-downloader-CrossAccountRole-TVSUTEGJ7CI5"
      ]
    },
    {
      name = "deployarn.active.prod.tax-tribunals-uploader-downloader.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/tax-tribunals-uploader-downloader-CrossAccountRole-TVSUTEGJ7CI5"
      ]
    },
    {
      name = "stack.active.tax-tribunals-wsproxy-prod.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "4e3cae04"
      ]
    },
    {
      name = "stack.prod3.tax-tribunals-wsproxy-prod.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "4e3cae04"
      ]
    },
    {
      name = "deployarn.active.prod.tax-tribunals-wsproxy.financeandtaxtribunals.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "False"
      ]
    },
    {
      name = "uploader-a4ae59a5.financeandtaxtribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "internal-tax-tribu-elbuploa-1sgrzeyhd7rzs-1071674395.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "www.financeandtaxtribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = module.financeandtaxtribunals_gov_uk_zone.zone_id
        name                   = "financeandtaxtribunals.gov.uk."
        evaluate_target_health = false
      }
    }
  ]
}

moved {
  from = module.financeandtaxtribunals_gov_uk.aws_route53_record.default
  to   = module.financeandtaxtribunals_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.financeandtaxtribunals_gov_uk.aws_route53_zone.default
  to   = module.financeandtaxtribunals_gov_uk_zone.aws_route53_zone.this
}
