module "blogs_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "blogs.justice.gov.uk"
  description = ""

  records = [
    {
      name = "blogs.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "54.194.93.232"
      ]
    },
    {
      name = "blogs.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-856.awsdns-43.net.",
        "ns-393.awsdns-49.com.",
        "ns-1034.awsdns-01.org.",
        "ns-1678.awsdns-17.co.uk."
      ]
    },
    {
      name = "cs.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-93-232.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "_amazonses.cs.blogs.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "R8EW9mewy4l2teMYyUK0kyuXGCDnuhB1RnXtyndZ8rU="
      ]
    },
    {
      name = "h5qw7hvcqrddaov2dre75vy4jzchkbsq._domainkey.cs.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "h5qw7hvcqrddaov2dre75vy4jzchkbsq.dkim.amazonses.com"
      ]
    },
    {
      name = "kt3d3bftgv4mmzduqwxpvxh3bbjfps72._domainkey.cs.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "kt3d3bftgv4mmzduqwxpvxh3bbjfps72.dkim.amazonses.com"
      ]
    },
    {
      name = "oajjnj7slmrbukrr5c6crn3sv35g5tpi._domainkey.cs.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "oajjnj7slmrbukrr5c6crn3sv35g5tpi.dkim.amazonses.com"
      ]
    },
    {
      name = "digital.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "redirector-cdn.production.govuk.service.gov.uk"
      ]
    },
    {
      name = "hmcts.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmctsblog.wpengine.com"
      ]
    },
    {
      name = "natalie.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmctsblog.wpengine.com"
      ]
    },
    {
      name = "nces.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ncesblog.prod.wp.dsd.io"
      ]
    },
    {
      name = "_5fbc904e08ce69cb4572a89a26cbfa2c.nces.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_eae5da7cfc7975f3afc2fad488637b85.vhzmpjdqfx.acm-validations.aws."
      ]
    },
    {
      name = "opgsenior.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "opgsenior.wpengine.com"
      ]
    },
    {
      name = "opgtransformation.blogs.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "opgblog.wpengine.com"
      ]
    },
    {
      name = "www.blogs.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "54.194.93.232"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
