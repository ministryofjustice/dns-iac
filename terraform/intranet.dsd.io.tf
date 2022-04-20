module "intranet_dsd_io" {
  source = "./modules/route53"

  domain      = "intranet.dsd.io"
  description = "Domain used by MoJ Intranet (confirmed 30 March 2021)"

  records = [
    {
      name = "intranet.dsd.io."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-1466.awsdns-55.org.",
        "ns-270.awsdns-33.com.",
        "ns-926.awsdns-51.net.",
        "ns-1567.awsdns-03.co.uk."
      ]
    },
    {
      name = "dev.intranet.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "intranet-de-elbdev-16psbxo68r82f-362402645.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "stack.2e85e497.intranet-dev.intranet.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "2e85e497"
      ]
    },
    {
      name = "stack.a4cf60dd.intranet-dev.intranet.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "a4cf60dd"
      ]
    },
    {
      name = "stack.active.intranet-dev.intranet.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "c8bede82"
      ]
    },
    {
      name = "stack.c8bede82.intranet-dev.intranet.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "c8bede82"
      ]
    },
    {
      name = "stack.d2b0e594.intranet-dev.intranet.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "d2b0e594"
      ]
    },
    {
      name = "stack.e42a6c26.intranet-dev.intranet.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "e42a6c26"
      ]
    },
    {
      name = "deployarn.active.dev.intranet.intranet.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/intranet-dev-c8bede82-CrossAccountRole-1KYTVME6JBZ7W"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
