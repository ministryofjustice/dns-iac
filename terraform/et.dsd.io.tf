module "et_dsd_io" {
  source = "./modules/route53"

  domain = "et.dsd.io"

  records = [
    {
      name = "_883097431ea9025095236ab1cd064ca1.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "018E26388B04EC5C860092916FD6B10C.32BA8DA5CD67CA35B898BF7C1FE46271.6eda0403281df4b9a24d.comodoca.com."
      ]
    },
    {
      name = "_acme-challenge.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "F88YSIm43n98J50j3G4ktJ9bvsxn54wH5ZpU5YdrCBE"
      ]
    },
    {
      name = "_amazonses.et.dsd.io.",
      type = "TXT",
      ttl  = 1800,
      records = [
        "jHZOyePj1HfHcrfR6A58J0411IpB6xyTwizioQcxCN8="
      ]
    },
    {
      name = "admin-dev.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.et-admin-dev-c-elb-422605317.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_150a78acf3675a1ae262400d826ad6b2.admin-dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_8a2e13126f221b6379cd2aa09fd71542.acm-validations.aws."
      ]
    },
    {
      name = "admin-staging.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.et-admin-staging-elb-2029753066.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "_8beef4b834d576eeb3a09e0786f16a9a.admin-staging.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_dfcd890b27f219571a3d43e51576f832.acm-validations.aws."
      ]
    },
    {
      name = "api-dev.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.et-api-dev-elb-1666786847.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "_9378c3c1eb07befc50fd6e969c510f7e.api-dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_c2f17094cf59b8183d2518a949e64e0e.acm-validations.aws."
      ]
    },
    {
      name = "api-staging.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.et-api-staging-elb-1614374337.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "_6e0ec1df882d8c947d93f087659d8816.api-staging.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_d7c7f59529bcfe9fb0fd9219fe5cbb56.acm-validations.aws."
      ]
    },
    {
      name = "stack.08b7c382.atet-dev.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "08b7c382"
      ]
    },
    {
      name = "stack.active.atet-dev.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "08b7c382"
      ]
    },
    {
      name = "stack.08b7c382.atet-dev1.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "08b7c382"
      ]
    },
    {
      name = "stack.active.atet-dev1.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "08b7c382"
      ]
    },
    {
      name = "stack.active.atet-prod.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "7289c8be"
      ]
    },
    {
      name = "stack.active.atet-staging.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "dabf48a8"
      ]
    },
    {
      name = "stack.active.atet-staging1.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "c427f66f"
      ]
    },
    {
      name = "deployarn.08b7c382.dev.atet.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/atet-dev-08b7c382-CrossAccountRole-ZLMPZM1GPCVG"
      ]
    },
    {
      name = "deployarn.active.dev.atet.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/atet-dev-08b7c382-CrossAccountRole-ZLMPZM1GPCVG"
      ]
    },
    {
      name = "deployarn.08b7c382.dev1.atet.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/atet-dev-08b7c382-CrossAccountRole-ZLMPZM1GPCVG"
      ]
    },
    {
      name = "deployarn.active.dev1.atet.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/atet-dev-08b7c382-CrossAccountRole-ZLMPZM1GPCVG"
      ]
    },
    {
      name = "deployarn.active.prod.atet.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/atet-prod-7289c8be-CrossAccountRole-MSFWGHQP9553"
      ]
    },
    {
      name = "deployarn.active.staging.atet.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/atet-staging-dabf48a8-CrossAccountRole-198E61KE3TPHJ"
      ]
    },
    {
      name = "atos-api-dev.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.et-atos-api-dev-elb-365779231.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "_519af819e642538e77f44d4193a44462.atos-api-dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_9ba9fb44a3853fb568a19cf6a36abb8c.acm-validations.aws."
      ]
    },
    {
      name = "atos-api-staging.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.et-atos-api-staging-elb-746520015.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "_2331a5bf3eca02d20380a86560e2bc8f.atos-api-staging.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_1650553c586670a84422a7864c116798.acm-validations.aws."
      ]
    },
    {
      name = "copy.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-76-231-228.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "demo.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-77-49-111.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-77-110-234.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "_a70a7a99f9cade27b2bceceed7f842f9.dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "3285F9C5F9445E8A87B647484E18685E.F7BF5F91263037EAE8FB82824427B22A.effffa8deef3c927fefc.comodoca.com"
      ]
    },
    {
      name = "_af317d220cf51657a08abc554be1faa5.dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_5a9c5de8481fa6d6ca97eba02a64b9d5.acm-validations.aws"
      ]
    },
    {
      name = "clamav-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "et-admin-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "et-api-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "et-atos-api-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "et-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 60,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "et3-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "flux.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "maintenance-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.112.223"
      ]
    },
    {
      name = "neuvector-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "sensu.dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-154-204-67.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "sentry-dev-azure.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "traefik-ui-dev.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.145.103.111"
      ]
    },
    {
      name = "traefik-ui-hwf-dev.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "traefik-ui-maint-hwf.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.142.250"
      ]
    },
    {
      name = "traefik-ui-maint.dev.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.112.223"
      ]
    },
    {
      name = "dev1.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "atet-dev-0-elbdev1-5vhxqbcorqqk-747506187.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "_a19b4556c010a6e31093fb909664daa9.dev1.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_08a2033dd5757f030420abfd15f06e01.acm-validations.aws"
      ]
    },
    {
      name = "elasticsearch.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.et.dsd.io"
      ]
    },
    {
      name = "_6c021b8b544e5cc82b4e9a793285f41a.et-admin-dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_149242920ce39b309c74d9e06d1a847a.acm-validations.aws."
      ]
    },
    {
      name = "_376b68065a5785b1a76e83a893087601.et-api-dev.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_d71efdf76896a649e016de0fd87f9bc7.acm-validations.aws."
      ]
    },
    {
      name = "stack.active.et-experimental.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f021cd5b"
      ]
    },
    {
      name = "stack.active.et-prod.et.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "None"
      ]
    },
    {
      name = "deployarn.active.experimental.et.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::140078519108:role/et-experimental-f021cd5b-CrossAccountRole-1ATGILWYTXO66"
      ]
    },
    {
      name = "et3-dev.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.et3-dev-c-elbet3de-n77941eyd3lz-397907257.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "et3-staging.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.et3-stagi-elbet3st-1dpa4e9q8d693-1656340447.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "deployarn.active.dev.et3.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${local.accounts["HMCTS Fee Remissions"]}:role/et3-dev-cf12aa9d-CrossAccountRole-2N158VO2OZ3H"
      ]
    },
    {
      name = "deployarn.active.staging.et3.et.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${local.accounts["HMCTS Fee Remissions"]}:role/et3-staging-1c015dc2-CrossAccountRole-17WEXKMN4N6C"
      ]
    },
    {
      name = "experimental.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "et-experi-elbexper-16j40yoblx1ur-580403429.eu-west-1.elb.amazonaws.com."
      ]
    },
    {
      name = "grafana.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.et.dsd.io"
      ]
    },
    {
      name = "graphite.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.et.dsd.io"
      ]
    },
    {
      name = "holding.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.93.32.35"
      ]
    },
    {
      name = "internal-mon.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "10.45.1.131"
      ]
    },
    {
      name = "jenkins.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-77-180-117.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "kibana.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.et.dsd.io"
      ]
    },
    {
      name = "mmb.et.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1137.awsdns-14.org.",
        "ns-704.awsdns-24.net.",
        "ns-403.awsdns-50.com.",
        "ns-1804.awsdns-33.co.uk."
      ]
    },
    {
      name = "monitoring.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-171-102-34.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "neuvector-azure.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.1.205"
      ]
    },
    {
      name = "prod.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.atet-prod-elbprod-s0x57d85t6d4-1599394397.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "assets.prod.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.171.24.23"
      ]
    },
    {
      name = "sensu.prod.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-154-249-243.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "prod1.et.dsd.io.",
      type = "A",
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id,
        name                   = "dualstack.atet-prod-elbprod-s0x57d85t6d4-1599394397.eu-west-1.elb.amazonaws.com.",
        evaluate_target_health = false
      }
    },
    {
      name = "qa.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-77-188-205.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "rabbit.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-145-50.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "sentry-azure.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.1.205"
      ]
    },
    {
      name = "_0d242f6c8b2de3c9b1c923b50331f0ec.staging.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_734d87fe97c0c388457d1ea3e40700d6.acm-validations.aws"
      ]
    },
    {
      name = "assets.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.229.35.9"
      ]
    },
    {
      name = "et-admin-stg-azure.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "et-api-stg-azure.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "et-atos-api-stg-azure.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "et-stg-azure.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "et3-stg-azure.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "maintenance.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "neuvector-stg-azure.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "sensu.staging.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-154-14-234.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "sentry-stg-azure.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "traefik-ui-stg.staging.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.8.203"
      ]
    },
    {
      name = "_d7deab2eebf0688948aae255cb1a4c35.staging1.et.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_5922afb0344f1c6af96a9c095807f33f.acm-validations.aws"
      ]
    },
    {
      name = "traefik-ui.et.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "51.140.1.205"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
