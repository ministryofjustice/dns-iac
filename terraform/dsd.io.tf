module "dsd_io_zone" {
  source = "./modules/route53/zone"

  name = "dsd.io"

  enable_shield_protection = true

  tags = {
    component = "None"
  }
}

module "dsd_io_records" {
  source = "./modules/route53/records"

  zone_id = module.dsd_io_zone.zone_id

  records = [
    {
      name = "dsd.io.",
      type = "MX",
      ttl  = 1800,
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "_amazonses.dsd.io.",
      type = "TXT",
      ttl  = 1800,
      records = [
        "H8uHHtYVLQ/jS2tDU/bfzD5fVCkOoMPcNIrY1EZMVzs=",
        "Eqf5BRJNj6Rn84SGmsbWc4YLnlRh2vabWbM62yGbMic="
      ]
    },
    {
      name = "_dmarc.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "v=DMARC1;p=none;sp=none;fo=1;rua=mailto:dmarc-rua@dmarc.service.gov.uk; ruf=mailto:dmarc-ruf@dmarc.service.gov.uk"
      ]
    },
    {
      name = "csq3rs4wz5qtcmpg5zqhtu5slbbkcniu._domainkey.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "csq3rs4wz5qtcmpg5zqhtu5slbbkcniu.dkim.amazonses.com"
      ]
    },
    {
      name = "qv5qafpkf3ojddzw7222ktvoqmjckxzs._domainkey.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "qv5qafpkf3ojddzw7222ktvoqmjckxzs.dkim.amazonses.com"
      ]
    },
    {
      name = "smtpapi._domainkey.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "svkdg7soiv4iwzx6rczvjircjf42xdvi._domainkey.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "svkdg7soiv4iwzx6rczvjircjf42xdvi.dkim.amazonses.com"
      ]
    },
    {
      name = "_smtp._tls.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "stack.active.accelerated-claims-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "c3477c63"
      ]
    },
    {
      name = "stack.c3477c63.accelerated-claims-dev.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "c3477c63"
      ]
    },
    {
      name = "stack.7c928508.accelerated-claims-production.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "7c928508"
      ]
    },
    {
      name = "stack.active.accelerated-claims-production.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "4240dcce"
      ]
    },
    {
      name = "stack.46266fd5.accelerated-claims-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "46266fd5"
      ]
    },
    {
      name = "stack.active.accelerated-claims-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "bf86775e"
      ]
    },
    {
      name = "stack.bf86775e.accelerated-claims-staging.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "bf86775e"
      ]
    },
    {
      name = "deployarn.active.dev.accelerated-claims.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/accelerated-claims-dev-c3477c63-CrossAccountRole-1MLS9UADWIMB3"
      ]
    },
    {
      name = "deployarn.c3477c63.dev.accelerated-claims.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/accelerated-claims-dev-c3477c63-CrossAccountRole-1MLS9UADWIMB3"
      ]
    },
    {
      name = "deployarn.7c928508.production.accelerated-claims.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/accelerated-claims-production-424-CrossAccountRole-8ELG8P1CPKN7"
      ]
    },
    {
      name = "deployarn.active.production.accelerated-claims.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/accelerated-claims-production-424-CrossAccountRole-8ELG8P1CPKN7"
      ]
    },
    {
      name = "deployarn.active.staging.accelerated-claims.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/accelerated-claims-staging-bf8677-CrossAccountRole-HO34YH5ZZYJK"
      ]
    },
    {
      name = "deployarn.bf867755e.staging.accelerated-claims.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/accelerated-claims-staging-bf8677-CrossAccountRole-HO34YH5ZZYJK"
      ]
    },
    {
      name = "*.branchrunner.acceleratedpossession-dev.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "acceleratedpossession-dev.dsd.io"
      ]
    },
    {
      name = "acceleratedpossession.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1114.awsdns-11.org.",
        "ns-941.awsdns-53.net.",
        "ns-325.awsdns-40.com.",
        "ns-1772.awsdns-29.co.uk."
      ]
    },
    {
      name = "archipelago.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "moj-archipelago.herokuapp.com."
      ]
    },
    {
      name = "asylum-support.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "azure.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns1-08.azure-dns.com.",
        "ns2-08.azure-dns.net.",
        "ns3-08.azure-dns.org.",
        "ns4-08.azure-dns.info."
      ]
    },
    {
      name = "cait.dsd.io.",
      type = "NS",
      ttl  = 600,
      records = [
        "ns-1096.awsdns-09.org.",
        "ns-1021.awsdns-63.net.",
        "ns-199.awsdns-24.com.",
        "ns-1729.awsdns-24.co.uk."
      ]
    },
    {
      name = "can-you-get-legal-aid.dsd.io.",
      type = "A",
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "carestandardstribunal.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "stack.active.ci-deploy-krs1.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "c1a26590"
      ]
    },
    {
      name = "stack.69690c5e.ci-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "69690c5e"
      ]
    },
    {
      name = "stack.b74a1674.ci-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "b74a1674"
      ]
    },
    {
      name = "stack.c2550272.ci-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "c2550272"
      ]
    },
    {
      name = "stack.e1666d1f.ci-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "e1666d1f"
      ]
    },
    {
      name = "stack.active.ci-hmcts.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "947d340b"
      ]
    },
    {
      name = "ci-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.76.188.44"
      ]
    },
    {
      name = "stack.active.ci-newprod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "1973491d"
      ]
    },
    {
      name = "stack.0c2e2de6.ci-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "0c2e2de6"
      ]
    },
    {
      name = "stack.active.ci-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "27a0c2a8"
      ]
    },
    {
      name = "stack.prod.ci-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "test"
      ]
    },
    {
      name = "stack.94f88ee6.ci-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "94f88ee6"
      ]
    },
    {
      name = "stack.active.ci-staging.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "badc95fa"
      ]
    },
    {
      name = "stack.b645b39b.ci-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "b645b39b"
      ]
    },
    {
      name = "stack.badc95fa.ci-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "badc95fa"
      ]
    },
    {
      name = "deployarn.active.newprod.ci.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ci-newprod-1973491d-CrossAccountRole-FEY1ZV8UEB4W"
      ]
    },
    {
      name = "deployarn.active.prod.ci.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ci-prod-d14b3969-CrossAccountRole-YRWUMSKNLFAG"
      ]
    },
    {
      name = "cla-admin.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-154-59-10.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "cla-backend-training.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "backend-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-backend.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "backend-integration.cla.dsd.io"
      ]
    },
    {
      name = "cla-callmeback-training.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "callmeback-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-docker.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.76.204.83"
      ]
    },
    {
      name = "cla-frontend-training.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "frontend-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-frontend.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "frontend-integration.cla.dsd.io"
      ]
    },
    {
      name = "cla-public-training.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "public-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-public.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "frontend-integration.cla.dsd.io"
      ]
    },
    {
      name = "cla-registry.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.16.69.126"
      ]
    },
    {
      name = "cla-training.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "frontend-training.cla.dsd.io"
      ]
    },
    {
      name = "cla.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-659.awsdns-18.net",
        "ns-1490.awsdns-58.org",
        "ns-84.awsdns-10.com",
        "ns-1853.awsdns-39.co.uk"
      ]
    },
    {
      name = "cla_providers_directory.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "core.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1119.awsdns-11.org.",
        "ns-442.awsdns-55.com.",
        "ns-1897.awsdns-45.co.uk.",
        "ns-714.awsdns-25.net."
      ]
    },
    {
      name = "stack.910a5789.courtfinder-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "910a5789"
      ]
    },
    {
      name = "stack.a14bdbf7.courtfinder-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "a14bdbf7"
      ]
    },
    {
      name = "stack.active.courtfinder-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "97187eb9"
      ]
    },
    {
      name = "stack.active.courtfinder-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "dc5f8e4d"
      ]
    },
    {
      name = "courtfinder-test.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-229-204-208.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "_amazonses.courtfinder.dsd.io.",
      type = "TXT",
      ttl  = 1800,
      records = [
        "G1EwlYcGmbhzmDSuyG/gZq2q7QCQx6EFWpaR00Yn8yQ="
      ]
    },
    {
      name = "kwhainhpqlxqd3rncd7msr22adgpmc4e._domainkey.courtfinder.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "kwhainhpqlxqd3rncd7msr22adgpmc4e.dkim.amazonses.com"
      ]
    },
    {
      name = "ul6mlfh6npxr5mfjd65qlhn7ut7jleo4._domainkey.courtfinder.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "ul6mlfh6npxr5mfjd65qlhn7ut7jleo4.dkim.amazonses.com"
      ]
    },
    {
      name = "zlo2uoj5k3ergpqnghq6uhkcjtjn4bcw._domainkey.courtfinder.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "zlo2uoj5k3ergpqnghq6uhkcjtjn4bcw.dkim.amazonses.com"
      ]
    },
    {
      name = "deployarn.active.dev.courtfinder.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/courtfinder-dev-97187eb9-CrossAccountRole-ZOS047VPE89X"
      ]
    },
    {
      name = "deployarn.active.staging.courtfinder.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/courtfinder-staging-dc5f8e4d-CrossAccountRole-6BX6WNAI0HKC"
      ]
    },
    {
      name = "courtfines.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "62.208.144.80"
      ]
    },
    {
      name = "crimebillingonline.dsd.io.",
      type = "NS",
      ttl  = 60,
      records = [
        "ns-695.awsdns-22.net.",
        "ns-446.awsdns-55.com.",
        "ns-1859.awsdns-40.co.uk.",
        "ns-1078.awsdns-06.org."
      ]
    },
    {
      name = "cs_blog.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "ctf.dsd.io.",
      type = "A",
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "dacp.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.19.133.172"
      ]
    },
    {
      name = "et.dashboard.dsd.io.",
      type = "A",
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "defence-request.dsd.io.",
      type = "NS",
      ttl  = 3600,
      records = [
        "ns-542.awsdns-03.net.",
        "ns-155.awsdns-19.com.",
        "ns-1949.awsdns-51.co.uk.",
        "ns-1329.awsdns-38.org."
      ]
    },
    {
      name = "stack.active.demo-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "d045d40c"
      ]
    },
    {
      name = "demo-intranet.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.246.235.16"
      ]
    },
    {
      name = "deployarn.active.dev.demo.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/demo-dev-f947d970-CrossAccountRole-NBGJRG18K8YD"
      ]
    },
    {
      name = "demo1-intranet.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo2-intranet.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo3-intranet.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo4-intranet.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo5-intranet.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "dev-lfc.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "dev.laafeecalculator.dsd.io."
      ]
    },
    {
      name = "stack.33c0d65b.docker-registry-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "33c0d65b"
      ]
    },
    {
      name = "stack.active.docker-registry-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "33c0d65b"
      ]
    },
    {
      name = "stack.b5203942.docker-registry-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "b5203942"
      ]
    },
    {
      name = "stack.b9dedd13.docker-registry-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "b9dedd13"
      ]
    },
    {
      name = "stack.devreg.docker-registry-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "c87a6ccc"
      ]
    },
    {
      name = "stack.active.docker-registry-newprod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "b1ac058e"
      ]
    },
    {
      name = "stack.active.docker-registry-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "768454e0"
      ]
    },
    {
      name = "stack.green.docker-registry-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "768454e0"
      ]
    },
    {
      name = "stack.active.docker-registry-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "3602d974"
      ]
    },
    {
      name = "deployarn.33c0d65b.dev.docker-registry.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/docker-registry-dev-33c0d65b-CrossAccountRole-1IQDI7HUS9BZA"
      ]
    },
    {
      name = "deployarn.active.dev.docker-registry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/docker-registry-dev-33c0d65b-CrossAccountRole-1IQDI7HUS9BZA"
      ]
    },
    {
      name = "deployarn.active.newprod.docker-registry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/docker-registry-newprod-b1ac058e-CrossAccountRole-1U81JQ26W2GL8"
      ]
    },
    {
      name = "deployarn.active.prod.docker-registry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/docker-registry-prod-768454e0-CrossAccountRole-1Y9KUI5NRMLI"
      ]
    },
    {
      name = "deployarn.green.prod.docker-registry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/docker-registry-prod-768454e0-CrossAccountRole-1Y9KUI5NRMLI"
      ]
    },
    {
      name = "deployarn.standby.prod.docker-registry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "None"
      ]
    },
    {
      name = "dockerails-dev.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "elb-dev-623140939.eu-west-1.elb.amazonaws.com."
      ]
    },
    {
      name = "dockerails.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1163.awsdns-17.org.",
        "ns-1590.awsdns-06.co.uk.",
        "ns-842.awsdns-41.net.",
        "ns-421.awsdns-52.com."
      ]
    },
    {
      name = "familyassessment.dsd.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1293.awsdns-33.org",
        "ns-571.awsdns-07.net",
        "ns-1735.awsdns-24.co.uk",
        "ns-458.awsdns-57.com"
      ]
    },
    {
      name = "dsd_blog.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "e6211db0073064ade016ad4558767968.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "www.digital.justice.gov.uk."
      ]
    },
    {
      name = "eatd.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "_29e6fa072cabf1c4c8ed043652cb77dc.elasticsearch.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_68ab398fca862a92da625f9b21effe6d.acm-validations.aws."
      ]
    },
    {
      name = "_48a95b0f6b9383b5850ca52940494730.www.elasticsearch.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_54ed4777b69c3ce620ad61078111bf87.acm-validations.aws."
      ]
    },
    {
      name = "stack.active.elk-experimental.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "3341fb85"
      ]
    },
    {
      name = "stack.active.elk-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "be1d76ab"
      ]
    },
    {
      name = "deployarn.active.experimental.elk.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/elk-experimental-3341fb85-CrossAccountRole-1GIT2DB1SXO3L"
      ]
    },
    {
      name = "deployarn.prod5x.prod.elk.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/elk-prod-6591eacf-CrossAccountRole-1V5OJXWLFEXTG"
      ]
    },
    {
      name = "employmentappeals.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "stack.active.es-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "8f5874e1"
      ]
    },
    {
      name = "es-hmcts.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "search-elasticseach-hmcts-z5qgdijlc4irggzljjowt2xwby.eu-west-1.es.amazonaws.com"
      ]
    },
    {
      name = "master.active.dev.es.dsd.io.",
      type = "A",
      ttl  = 60,
      records = [
        "54.154.200.180"
      ]
    },
    {
      name = "et.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1373.awsdns-43.org",
        "ns-459.awsdns-57.com",
        "ns-1645.awsdns-13.co.uk",
        "ns-731.awsdns-27.net"
      ]
    },
    {
      name = "fala.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1159.awsdns-16.org",
        "ns-126.awsdns-15.com",
        "ns-932.awsdns-52.net",
        "ns-1885.awsdns-43.co.uk"
      ]
    },
    {
      name = "familymediators.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1538.awsdns-00.co.uk.",
        "ns-1021.awsdns-63.net.",
        "ns-1399.awsdns-46.org.",
        "ns-213.awsdns-26.com."
      ]
    },
    {
      name = "familymediatorsapi.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-794.awsdns-35.net.",
        "ns-1106.awsdns-10.org.",
        "ns-205.awsdns-25.com.",
        "ns-2028.awsdns-61.co.uk."
      ]
    },
    {
      name = "fatt.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "feeremissions.dsd.io.",
      type = "NS",
      ttl  = 86400,
      records = [
        "ns-1263.awsdns-29.org.",
        "ns-847.awsdns-41.net.",
        "ns-70.awsdns-08.com.",
        "ns-1921.awsdns-48.co.uk."
      ]
    },
    {
      name = "ftiacdailycourtlist.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "ftp.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "git.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "172.22.8.3"
      ]
    },
    {
      name = "gl_summit.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "stack.active.glimr-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f6e2e5ff"
      ]
    },
    {
      name = "helpwithcourtfees.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-293.awsdns-36.com.",
        "ns-518.awsdns-00.net.",
        "ns-1474.awsdns-56.org.",
        "ns-1733.awsdns-24.co.uk."
      ]
    },
    {
      name = "helpwithcourtfees.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "hillsborough.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "hmpps.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns4-09.azure-dns.info.",
        "ns3-09.azure-dns.org.",
        "ns2-09.azure-dns.net.",
        "ns1-09.azure-dns.com."
      ]
    },
    {
      name = "stack.active.hubot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "c1b50cae"
      ]
    },
    {
      name = "stack.active.hubot-dev2.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "777da8bf"
      ]
    },
    {
      name = "deployarn.active.dev.hubot.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/hubot-dev-c1b50cae-CrossAccountRole-33QFW2Y4G9F2"
      ]
    },
    {
      name = "stack.active.huboto-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f6bf14f5"
      ]
    },
    {
      name = "deployarn.active.dev.huboto.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/huboto-dev-f6bf14f5-CrossAccountRole-8DOVJ11OKAA0"
      ]
    },
    {
      name = "hwf.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1940.awsdns-50.co.uk.",
        "ns-658.awsdns-18.net.",
        "ns-13.awsdns-01.com.",
        "ns-1346.awsdns-40.org."
      ]
    },
    {
      name = "hwf.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "immigrationservicestribunal.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "informationtribunal.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "int-prisonvisits.dsd.io.",
      type = "A",
      ttl  = 30,
      records = [
        "172.22.16.3"
      ]
    },
    {
      name = "*.int-prisonvisits.dsd.io.",
      type = "A",
      ttl  = 30,
      records = [
        "172.22.16.3"
      ]
    },
    {
      name = "dev.internal-router.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "internal-ELBinter-Z5I2NME4SF0S-1252863027.eu-west-1.elb.amazonaws.com"
      ]
    },
    {
      name = "intra.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-537.awsdns-03.net",
        "ns-143.awsdns-17.com",
        "ns-1351.awsdns-40.org",
        "ns-1952.awsdns-52.co.uk"
      ]
    },
    {
      name = "deployarn.active.dev.intranet-jenkins.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/intranet-jenkins-dev-CrossAccountRole-TWIMA75Q44MY"
      ]
    },
    {
      name = "is-prod.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1646.awsdns-13.co.uk.",
        "ns-686.awsdns-21.net.",
        "ns-1373.awsdns-43.org.",
        "ns-473.awsdns-59.com."
      ]
    },
    {
      name = "is.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1723.awsdns-23.co.uk.",
        "ns-306.awsdns-38.com.",
        "ns-1433.awsdns-51.org.",
        "ns-554.awsdns-05.net."
      ]
    },
    {
      name = "jenkins-alpha.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "172.22.6.53"
      ]
    },
    {
      name = "jenkins-next.dsd.io.",
      type = "CNAME",
      ttl  = 3600,
      records = [
        "ec2-54-194-212-120.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "jenkins-old.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.246.250.229"
      ]
    },
    {
      name = "jenkins-ubuntu.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.194.38.138"
      ]
    },
    {
      name = "jenkins.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-212-120.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "jonathan-wood.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "jurorsummons.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.73.202.113"
      ]
    },
    {
      name = "jurysummons.dsd.io.",
      type = "NS",
      ttl  = 60,
      records = [
        "ns-397.awsdns-49.com.",
        "ns-687.awsdns-21.net.",
        "ns-1832.awsdns-37.co.uk.",
        "ns-1054.awsdns-03.org."
      ]
    },
    {
      name = "justice-intranet.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-662.awsdns-18.net.",
        "ns-60.awsdns-07.com.",
        "ns-1926.awsdns-48.co.uk.",
        "ns-1328.awsdns-38.org."
      ]
    },
    {
      name = "kibana.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "mon.dsd.io"
      ]
    },
    {
      name = "stack.active.ks-deploy-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "203cda55"
      ]
    },
    {
      name = "kube.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-583.awsdns-08.net.",
        "ns-453.awsdns-56.com.",
        "ns-1187.awsdns-20.org.",
        "ns-1636.awsdns-12.co.uk."
      ]
    },
    {
      name = "laa-rota.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-487.awsdns-60.com.",
        "ns-1259.awsdns-29.org.",
        "ns-804.awsdns-36.net.",
        "ns-1650.awsdns-14.co.uk."
      ]
    },
    {
      name = "laafeecalculator.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1147.awsdns-15.org.",
        "ns-620.awsdns-13.net.",
        "ns-104.awsdns-13.com.",
        "ns-1794.awsdns-32.co.uk."
      ]
    },
    {
      name = "landstribunal.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "local.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "127.0.0.1"
      ]
    },
    {
      name = "*.local.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "127.0.0.1"
      ]
    },
    {
      name = "lpadown.dsd.io.",
      type = "A",
      ttl  = 60,
      records = [
        "54.72.5.215"
      ]
    },
    {
      name = "lpawiki.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.229.49.163"
      ]
    },
    {
      name = "maildrop.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-72-59-165.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "_a5c3b9452c35b35389c1f1d9320e5c75.maintain.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_dbdace06d3074d2a389c061c507bdd98.acm-validations.aws."
      ]
    },
    {
      name = "maintenance.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.93.44.205"
      ]
    },
    {
      name = "makeaplea.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1588.awsdns-06.co.uk",
        "ns-995.awsdns-60.net",
        "ns-1282.awsdns-32.org",
        "ns-204.awsdns-25.com"
      ]
    },
    {
      name = "mantis_lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "stack.green.mattp-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "03188574"
      ]
    },
    {
      name = "deployarn.active.dev.mattp.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "False"
      ]
    },
    {
      name = "mediation-content.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "mediation-content.dsd.io.herokudns.com"
      ]
    },
    {
      name = "stack.active.moj-product-dashboard-deploy-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "09162b05"
      ]
    },
    {
      name = "stack.active.moj-product-dashboard-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "360e31aa"
      ]
    },
    {
      name = "stack.active.moj-product-dashboard-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "dff14c94"
      ]
    },
    {
      name = "deployarn.active.prod.moj-product-dashboard.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/moj-product-dashboard-prod-360e31-CrossAccountRole-VPW3FE8SHPGI"
      ]
    },
    {
      name = "deployarn.active.staging.moj-product-dashboard.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/moj-product-dashboard-staging-dff-CrossAccountRole-OQVFUENUWWWG"
      ]
    },
    {
      name = "mojintranet.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1618.awsdns-10.co.uk.",
        "ns-666.awsdns-19.net.",
        "ns-371.awsdns-46.com.",
        "ns-1471.awsdns-55.org."
      ]
    },
    {
      name = "mon.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.194.12.181"
      ]
    },
    {
      name = "stack.active.my-project-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "addff241"
      ]
    },
    {
      name = "deployarn.active.dev.my-project.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/my-project-dev-addff241-CrossAccountRole-HT3QTKUDX2NK"
      ]
    },
    {
      name = "stack.active.myproject-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "5fd60641"
      ]
    },
    {
      name = "deployarn.active.dev.myproject.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/myproject-dev-5fd60641-CrossAccountRole-Y33DDZUEPOUW"
      ]
    },
    {
      name = "stack.active.mything-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "01f9f68f"
      ]
    },
    {
      name = "dev.nomis-api-access.dsd.io.",
      type = "NS",
      ttl  = 1500,
      records = [
        "ns-1354.awsdns-41.org.",
        "ns-1627.awsdns-11.co.uk.",
        "ns-654.awsdns-17.net.",
        "ns-206.awsdns-25.com."
      ]
    },
    {
      name = "prod.nomis-api-access.dsd.io.",
      type = "NS",
      ttl  = 1500,
      records = [
        "ns-1171.awsdns-18.org.",
        "ns-302.awsdns-37.com.",
        "ns-906.awsdns-49.net.",
        "ns-1794.awsdns-32.co.uk."
      ]
    },
    {
      name = "noms.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns1-07.azure-dns.com.",
        "ns2-07.azure-dns.net.",
        "ns3-07.azure-dns.org.",
        "ns4-07.azure-dns.info."
      ]
    },
    {
      name = "search.noms.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-212-199-217.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "one3one.dsd.io.",
      type = "A",
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "openjustice.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-34-248-250-65.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "opg-backoffice-ci.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.190.125"
      ]
    },
    {
      name = "opg-backoffice-dev-jenkins-build.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.171.153.71"
      ]
    },
    {
      name = "opg-backoffice-dev-jenkins-deploy.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.76.55.169"
      ]
    },
    {
      name = "opg-backoffice-dev-jenkins.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.171.121.42"
      ]
    },
    {
      name = "opg-backoffice-integration.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.194.221.57"
      ]
    },
    {
      name = "ddc.opg-backoffice-integration.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.194.221.57"
      ]
    },
    {
      name = "opg-backoffice-jenkins.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.174.13"
      ]
    },
    {
      name = "opg-backoffice-qa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.171.58.225"
      ]
    },
    {
      name = "elasticsearch.opg-backoffice-qa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.171.58.225"
      ]
    },
    {
      name = "opg-backoffice-review.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.171.58.225"
      ]
    },
    {
      name = "opg-backoffice-scratch.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.171.198.218"
      ]
    },
    {
      name = "opg-backoffice-snapshot.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.190.125"
      ]
    },
    {
      name = "opg-backoffice-training.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.72.135.104"
      ]
    },
    {
      name = "opg-backoffice-uat.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.107.133"
      ]
    },
    {
      name = "ddc.opg-backoffice-uat.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.107.33"
      ]
    },
    {
      name = "opg.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.73.63.103"
      ]
    },
    {
      name = "opg.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-75.awsdns-09.com",
        "ns-1970.awsdns-54.co.uk",
        "ns-660.awsdns-18.net",
        "ns-1379.awsdns-44.org"
      ]
    },
    {
      name = "_amazonses.opg.dsd.io.",
      type = "TXT",
      ttl  = 1800,
      records = [
        "bWOD7mXHLafhehCkT+4DNLWwmQKx3Kxsn/nxubU3Tbg="
      ]
    },
    {
      name = "767topg7v6qyf3jlozwlxhu2zcqb4fuk._domainkey.opg.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "767topg7v6qyf3jlozwlxhu2zcqb4fuk.dkim.amazonses.com"
      ]
    },
    {
      name = "fyibmzgtfcszcfbnwmcysnrb6hjeq23s._domainkey.opg.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "fyibmzgtfcszcfbnwmcysnrb6hjeq23s.dkim.amazonses.com"
      ]
    },
    {
      name = "ydu5yan7zvss4dzjahepxa6tknn3wvy4._domainkey.opg.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "ydu5yan7zvss4dzjahepxa6tknn3wvy4.dkim.amazonses.com"
      ]
    },
    {
      name = "ci.opg.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.76.9.27"
      ]
    },
    {
      name = "core-back.opg.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "jenkins.opg.dsd.io"
      ]
    },
    {
      name = "core-front.opg.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "jenkins.opg.dsd.io"
      ]
    },
    {
      name = "jenkins.opg.dsd.io.",
      type = "A",
      ttl  = 60,
      records = [
        "54.229.206.68"
      ]
    },
    {
      name = "processmaker.opg.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "jenkins.opg.dsd.io"
      ]
    },
    {
      name = "sugar.opg.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "jenkins.opg.dsd.io"
      ]
    },
    {
      name = "swagger.opg.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "jenkins.opg.dsd.io"
      ]
    },
    {
      name = "opg_blog.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "opgbackoffice.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.72.134.170"
      ]
    },
    {
      name = "osscsc.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "platforms-training.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-733.awsdns-27.net",
        "ns-1767.awsdns-28.co.uk",
        "ns-1263.awsdns-29.org",
        "ns-358.awsdns-44.com"
      ]
    },
    {
      name = "platforms.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1273.awsdns-31.org",
        "ns-382.awsdns-47.com",
        "ns-1988.awsdns-56.co.uk",
        "ns-918.awsdns-50.net"
      ]
    },
    {
      name = "pleaonline.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1887.awsdns-43.co.uk.",
        "ns-1184.awsdns-20.org.",
        "ns-1018.awsdns-63.net.",
        "ns-111.awsdns-13.com."
      ]
    },
    {
      name = "stack.active.po-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "5ecff3b9"
      ]
    },
    {
      name = "stack.active.po-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "553a27f6"
      ]
    },
    {
      name = "stack.active.po-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "77c25fb8"
      ]
    },
    {
      name = "deployarn.active.dev.po.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/po-dev-5ecff3b9-CrossAccountRole-1MVPOUUZ4DR04"
      ]
    },
    {
      name = "deployarn.active.prod.po.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/po-prod-553a27f6-CrossAccountRole-BCXALGQKKIWA"
      ]
    },
    {
      name = "deployarn.active.staging.po.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/po-staging-77c25fb8-CrossAccountRole-1NEVI39K1IUUG"
      ]
    },
    {
      name = "postcode_lookup.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "ppo.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "_amazonses.ppo.dsd.io.",
      type = "TXT",
      ttl  = 1800,
      records = [
        "Vk3y1zBydDzo+p+ekAMBa6sU62jDgU1NY9/j1/AE+UE="
      ]
    },
    {
      name = "7vyvfadjerzncwgstpglhj6bwd5ekpbo._domainkey.ppo.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "7vyvfadjerzncwgstpglhj6bwd5ekpbo.dkim.amazonses.com"
      ]
    },
    {
      name = "bzy75fcccsl3f4ii6ogijiguy2mu2hww._domainkey.ppo.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "bzy75fcccsl3f4ii6ogijiguy2mu2hww.dkim.amazonses.com"
      ]
    },
    {
      name = "dutq2xwgepvjh4rjdqysfw73kmkpdyjz._domainkey.ppo.dsd.io.",
      type = "CNAME",
      ttl  = 1800,
      records = [
        "dutq2xwgepvjh4rjdqysfw73kmkpdyjz.dkim.amazonses.com"
      ]
    },
    {
      name = "prad.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.19.133.172"
      ]
    },
    {
      name = "primaryhealthlistsdecisions.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "elasticsearch.prod-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.195"
      ]
    },
    {
      name = "kibana.prod-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.195"
      ]
    },
    {
      name = "monitoring.prod-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.195"
      ]
    },
    {
      name = "sentry.prod-lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.prod-lpa.dsd.io"
      ]
    },
    {
      name = "production29.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-24-225.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "providercalc.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.17.13.3"
      ]
    },
    {
      name = "pub.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-923.awsdns-51.net.",
        "ns-215.awsdns-26.com.",
        "ns-1375.awsdns-43.org.",
        "ns-1928.awsdns-49.co.uk."
      ]
    },
    {
      name = "stack.active.rabbitmq-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "459e3857"
      ]
    },
    {
      name = "deployarn.active.dev.rabbitmq.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/rabbitmq-dev-459e3857-CrossAccountRole-E9X4BS81JAFN"
      ]
    },
    {
      name = "repo0.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-103-46.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "repo1.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.194.52.110"
      ]
    },
    {
      name = "stack.active.riemann-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "42fe0ed2"
      ]
    },
    {
      name = "deployarn.active.dev.riemann.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/riemann-dev-42fe0ed2-CrossAccountRole-220SGN8K4YLH"
      ]
    },
    {
      name = "stack.135f87ef.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "135f87ef"
      ]
    },
    {
      name = "stack.6c57c14e.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "6c57c14e"
      ]
    },
    {
      name = "stack.955f2252.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "955f2252"
      ]
    },
    {
      name = "stack.97484c08.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "97484c08"
      ]
    },
    {
      name = "stack.active.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "97484c08"
      ]
    },
    {
      name = "stack.b0e6c9da.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "b0e6c9da"
      ]
    },
    {
      name = "stack.f52dbd37.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f52dbd37"
      ]
    },
    {
      name = "stack.f7d8c1ea.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f7d8c1ea"
      ]
    },
    {
      name = "stack.f9185e99.rot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f9185e99"
      ]
    },
    {
      name = "rot-frontend-dev.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.18.154.179"
      ]
    },
    {
      name = "deployarn.97484c08.dev.rot.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/rot-dev-97484c08-CrossAccountRole-16XCK3R72HVOU"
      ]
    },
    {
      name = "deployarn.active.dev.rot.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/rot-dev-97484c08-CrossAccountRole-16XCK3R72HVOU"
      ]
    },
    {
      name = "elasticsearch.scratch-lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.scratch-lpa.dsd.io."
      ]
    },
    {
      name = "kibana.scratch-lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.scratch-lpa.dsd.io."
      ]
    },
    {
      name = "monitoring.scratch-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.10.45"
      ]
    },
    {
      name = "sentry.scratch-lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.scratch-lpa.dsd.io"
      ]
    },
    {
      name = "scs-performance.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "scs-performance.herokuapp.com"
      ]
    },
    {
      name = "scs.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-615.awsdns-12.net",
        "ns-368.awsdns-46.com",
        "ns-1527.awsdns-62.org",
        "ns-1731.awsdns-24.co.uk"
      ]
    },
    {
      name = "search-noms-api.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-212-199-217.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "stack.active.senrty-staging.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "cdde1be0"
      ]
    },
    {
      name = "stack.active.sentry-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "d816934f"
      ]
    },
    {
      name = "stack.new2.sentry-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "d816934f"
      ]
    },
    {
      name = "stack.active.sentry-prod1.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "7f97d29b"
      ]
    },
    {
      name = "stack.active.sentry-prodpara.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "2f97e85c"
      ]
    },
    {
      name = "stack.active.sentry-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "cdde1be0"
      ]
    },
    {
      name = "stack.ltsampros2.sentry-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "cdde1be0"
      ]
    },
    {
      name = "stack.ltsampros3.sentry-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "dd30b374"
      ]
    },
    {
      name = "sentry.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "mon.dsd.io"
      ]
    },
    {
      name = "deployarn.active.prod.sentry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/sentry-prod-d816934f-CrossAccountRole-2DQZ07X260TX"
      ]
    },
    {
      name = "deployarn.new2.prod.sentry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/sentry-prod-d816934f-CrossAccountRole-2DQZ07X260TX"
      ]
    },
    {
      name = "deployarn.active.prod1.sentry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/sentry-prod1-7f97d29b-CrossAccountRole-T9EHJS1H4TWL"
      ]
    },
    {
      name = "deployarn.active.prodpara.sentry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/sentry-prodpara-2f97e85c-CrossAccountRole-NDY5CG3HA6KW"
      ]
    },
    {
      name = "deployarn.active.staging.sentry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/sentry-staging-cdde1be0-CrossAccountRole-PCXIJ6K6VSFY"
      ]
    },
    {
      name = "deployarn.ltsampros2.staging.sentry.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/sentry-staging-cdde1be0-CrossAccountRole-PCXIJ6K6VSFY"
      ]
    },
    {
      name = "service-mapper.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "moj-archipelago.herokuapp.com."
      ]
    },
    {
      name = "s1._domainkey.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "s1.domainkey.u2748441.wl192.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "s2.domainkey.u2748441.wl192.sendgrid.net"
      ]
    },
    {
      name = "_6b6253eac9e7549bb70b0e42830e95b9.ci-hmcts.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_911134c8d386ffd7445e3b435f346286.ltfvzjuylp.acm-validations.aws."
      ]
    },
    {
      name = "cla-admin.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "83.151.212.52"
      ]
    },
    {
      name = "cla-backend.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.9.58"
      ]
    },
    {
      name = "cla-callmeback.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "83.151.212.51"
      ]
    },
    {
      name = "cla-cases.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.9.53"
      ]
    },
    {
      name = "cla-frontend.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.9.58"
      ]
    },
    {
      name = "cla-monitoring.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.9.58"
      ]
    },
    {
      name = "cla-public.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "83.151.212.50"
      ]
    },
    {
      name = "elasticsearch.cla.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.9.58"
      ]
    },
    {
      name = "kibana.cla.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.9.58"
      ]
    },
    {
      name = "sentry.cla.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.9.58"
      ]
    },
    {
      name = "dev-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.92.20"
      ]
    },
    {
      name = "www.dev-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.92.20"
      ]
    },
    {
      name = "digideps.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.194.218.14"
      ]
    },
    {
      name = "email.digideps.service.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "v=spf1 include:sendgrid.net ~all"
      ]
    },
    {
      name = "smtpapi._domainkey.email.digideps.service.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "em.email.digideps.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.em.email.digideps.service.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "o1.em.email.digideps.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "198.21.4.244"
      ]
    },
    {
      name = "email.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "u2748441.wl192.sendgrid.net"
      ]
    },
    {
      name = "kibana-dev.service.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "maintain.dsd.io"
      ]
    },
    {
      name = "_24f86490dd8e8242d01b5914ce8e8019.kibana.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_daf1bf01939ece075dc4fec43a7bdf61.acm-validations.aws."
      ]
    },
    {
      name = "_69133e86fceb234c531dae34bdeedfab.www.kibana.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_0af1643752ab295de404bc3cf57bf3b7.acm-validations.aws."
      ]
    },
    {
      name = "mapit.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "mapit-554887916.eu-west-1.elb.amazonaws.com"
      ]
    },
    {
      name = "membrane-sirius.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "sirius.service.dsd.io"
      ]
    },
    {
      name = "production-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.196"
      ]
    },
    {
      name = "scratch-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.10.45"
      ]
    },
    {
      name = "scratch-v1-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "83.151.219.74"
      ]
    },
    {
      name = "scs.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "scs-prod-rails-1856894970.eu-west-1.elb.amazonaws.com."
      ]
    },
    {
      name = "sirius.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "37.26.91.54"
      ]
    },
    {
      name = "staging-digideps.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.76.171.16"
      ]
    },
    {
      name = "staging-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.37"
      ]
    },
    {
      name = "www.staging-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.37"
      ]
    },
    {
      name = "staging-v1-lpa.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "83.151.213.226"
      ]
    },
    {
      name = "www.staging-v1-lpa.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "staging-v1-lpa.service.dsd.io."
      ]
    },
    {
      name = "_adda73ca742a1234e9f9d2c93f9882fd.status.service.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_7a7432de6a3202bc3b084011c61d9a53.acm-validations.aws"
      ]
    },
    {
      name = "web-ssh.service.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.250.158"
      ]
    },
    {
      name = "servicedeskblog.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "192.30.252.153",
        "192.30.252.154"
      ]
    },
    {
      name = "siaacd.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "signon.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-59.awsdns-07.com.",
        "ns-1851.awsdns-39.co.uk.",
        "ns-1322.awsdns-37.org.",
        "ns-547.awsdns-04.net."
      ]
    },
    {
      name = "stack.active.snd-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "d41dfc31"
      ]
    },
    {
      name = "sscsvp.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "stack.active.staff-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "26063002"
      ]
    },
    {
      name = "elasticsearch.stag-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.37"
      ]
    },
    {
      name = "kibana.stag-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.37"
      ]
    },
    {
      name = "monitoring.staging-backoffice.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "37.26.91.54"
      ]
    },
    {
      name = "elasticsearch.staging-lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.staging-lpa.dsd.io"
      ]
    },
    {
      name = "kibana.staging-lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.staging-lpa.dsd.io"
      ]
    },
    {
      name = "monitoring.staging-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.37"
      ]
    },
    {
      name = "sentry.staging-lpa.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "monitoring.staging-lpa.dsd.io"
      ]
    },
    {
      name = "www.staging-lpa.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "185.40.8.37"
      ]
    },
    {
      name = "email.staging.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "sendgrid.net"
      ]
    },
    {
      name = "smtpapi._domainkey.email.staging.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "staging43.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-78-102.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "staging44.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-111-61.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "staging47.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-156-23.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "static.dsd.io.",
      type = "A",
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "deployarn.active.dev.status.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/status-dev-5e7648d9-CrossAccountRole-16ZHLNT1IYNZ8"
      ]
    },
    {
      name = "deployarn.active.prod.status.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/status-prod-ca4070c2-CrossAccountRole-165ECTPBSFUHG"
      ]
    },
    {
      name = "deployarn.ca4070c2.prod.status.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/status-prod-ca4070c2-CrossAccountRole-165ECTPBSFUHG"
      ]
    },
    {
      name = "tactical-products.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1982.awsdns-55.co.uk.",
        "ns-832.awsdns-40.net.",
        "ns-1081.awsdns-07.org.",
        "ns-221.awsdns-27.com."
      ]
    },
    {
      name = "tacticalproducts.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1470.awsdns-55.org.",
        "ns-1965.awsdns-53.co.uk.",
        "ns-974.awsdns-57.net.",
        "ns-106.awsdns-13.com."
      ]
    },
    {
      name = "tacticalproductsalb.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-826.awsdns-39.net.",
        "ns-1122.awsdns-12.org.",
        "ns-448.awsdns-56.com.",
        "ns-1811.awsdns-34.co.uk."
      ]
    },
    {
      name = "tacticalproductshmcts.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1635.awsdns-12.co.uk.",
        "ns-975.awsdns-57.net.",
        "ns-258.awsdns-32.com.",
        "ns-1497.awsdns-59.org."
      ]
    },
    {
      name = "tax-tribunals-datacapture-dev2.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "tax-tribunals-datacapture-dev.dsd.io"
      ]
    },
    {
      name = "_bfa871d9ae35776361503dc9a3a10db1.tax-tribunals-datacapture-staging.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_c97c367e852ca6a18aa1f2119d71c3b9.tljzshvwok.acm-validations.aws."
      ]
    },
    {
      name = "_109272a5626b87442929a35439e041e8.tax-tribunals-downloader-dev.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_7bc0baa60d71eb4f79203145484d7a83.ltfvzjuylp.acm-validations.aws."
      ]
    },
    {
      name = "stack.active.tax-tribunals-downloader-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "0690ca98"
      ]
    },
    {
      name = "deployarn.active.dev.tax-tribunals-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-downloader-dev-0690-CrossAccountRole-1T5WLVE32WS50"
      ]
    },
    {
      name = "stack.active.tax-tribunals-fees-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "0931d739"
      ]
    },
    {
      name = "stack.newdev3.tax-tribunals-fees-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "0931d739"
      ]
    },
    {
      name = "stack.test_cfn_update.tax-tribunals-fees-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "fa049ac1"
      ]
    },
    {
      name = "stack.active.tax-tribunals-fees-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f6885b5e"
      ]
    },
    {
      name = "stack.prod1.tax-tribunals-fees-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f6885b5e"
      ]
    },
    {
      name = "stack.1049b7df.tax-tribunals-fees-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "1049b7df"
      ]
    },
    {
      name = "_29faedc51b99a21e6b546e9f0ae8f53a.tax-tribunals-fees-staging.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "_e2ebb11a735d6cabe65ab6dc0789debb.tljzshvwok.acm-validations.aws."
      ]
    },
    {
      name = "stack.active.tax-tribunals-fees-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "1049b7df"
      ]
    },
    {
      name = "deployarn.active.dev.tax-tribunals-fees.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-fees-dev-0931d739-CrossAccountRole-16J2JQTXX5BIY"
      ]
    },
    {
      name = "deployarn.newdev3.dev.tax-tribunals-fees.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-fees-dev-0931d739-CrossAccountRole-16J2JQTXX5BIY"
      ]
    },
    {
      name = "deployarn.twocontainers.dev.tax-tribunals-fees.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-fees-dev-3fc8a252-CrossAccountRole-19VQZQDIYLZNJ"
      ]
    },
    {
      name = "deployarn.active.prod.tax-tribunals-fees.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-fees-prod-f6885b5e-CrossAccountRole-1W4UOGX1A6CPX"
      ]
    },
    {
      name = "deployarn.prod1.prod.tax-tribunals-fees.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-fees-prod-f6885b5e-CrossAccountRole-1W4UOGX1A6CPX"
      ]
    },
    {
      name = "deployarn.1049b7df.staging.tax-tribunals-fees.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-fees-staging-1049b7-CrossAccountRole-GRHP7C52QR5B"
      ]
    },
    {
      name = "deployarn.active.staging.tax-tribunals-fees.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-fees-staging-1049b7-CrossAccountRole-GRHP7C52QR5B"
      ]
    },
    {
      name = "stack.prod10.tax-tribunals-feespayment-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "2e0665b9"
      ]
    },
    {
      name = "stack.563646a3.tax-tribunals-uploader-downloader-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "563646a3"
      ]
    },
    {
      name = "stack.active.tax-tribunals-uploader-downloader-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "563646a3"
      ]
    },
    {
      name = "stack.dev.tax-tribunals-uploader-downloader-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "0f6e2ce8"
      ]
    },
    {
      name = "stack.newdev3.tax-tribunals-uploader-downloader-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "49e518fe"
      ]
    },
    {
      name = "stack.68ade87f.tax-tribunals-uploader-downloader-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "68ade87f"
      ]
    },
    {
      name = "stack.active.tax-tribunals-uploader-downloader-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "68ade87f"
      ]
    },
    {
      name = "stack.staging2.tax-tribunals-uploader-downloader-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "68989a9a"
      ]
    },
    {
      name = "deployarn.563646a3.dev.tax-tribunals-uploader-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-uploader-downloader-CrossAccountRole-115NC9VHVEKIN"
      ]
    },
    {
      name = "deployarn.active.dev.tax-tribunals-uploader-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-uploader-downloader-CrossAccountRole-115NC9VHVEKIN"
      ]
    },
    {
      name = "deployarn.dev.dev.tax-tribunals-uploader-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-uploader-downloader-CrossAccountRole-71DT5GRG6VM0"
      ]
    },
    {
      name = "deployarn.test2.dev.tax-tribunals-uploader-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-uploader-downloader-CrossAccountRole-U53ZPYJ237QC"
      ]
    },
    {
      name = "deployarn.68ade87f.staging.tax-tribunals-uploader-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-uploader-downloader-CrossAccountRole-NA8CPBYWBYJZ"
      ]
    },
    {
      name = "deployarn.active.staging.tax-tribunals-uploader-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-uploader-downloader-CrossAccountRole-NA8CPBYWBYJZ"
      ]
    },
    {
      name = "deployarn.staging2.staging.tax-tribunals-uploader-downloader.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-uploader-downloader-CrossAccountRole-1VXPGAW8XQRUE"
      ]
    },
    {
      name = "stack.35383dcc.tax-tribunals-wsproxy-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "35383dcc"
      ]
    },
    {
      name = "stack.active.tax-tribunals-wsproxy-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "35383dcc"
      ]
    },
    {
      name = "stack.af6eae4a.tax-tribunals-wsproxy-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "af6eae4a"
      ]
    },
    {
      name = "deployarn.active.staging.tax-tribunals-wsproxy.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tax-tribunals-wsproxy-staging-353-CrossAccountRole-6IIPSV8BG369"
      ]
    },
    {
      name = "taxtribsecs.dsd.io.",
      type = "CNAME",
      ttl  = 60,
      records = [
        "ecs-taxtribs-1587962178.eu-west-1.elb.amazonaws.com"
      ]
    },
    {
      name = "taxtribunals.dsd.io.",
      type = "NS",
      ttl  = 86400,
      records = [
        "ns-1924.awsdns-48.co.uk.",
        "ns-984.awsdns-59.net.",
        "ns-280.awsdns-35.com.",
        "ns-1245.awsdns-27.org."
      ]
    },
    {
      name = "team.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "limitless-mountain-8639.herokuapp.com"
      ]
    },
    {
      name = "stack.active.template-deploy-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f7a81cb0"
      ]
    },
    {
      name = "stack.active.test-anchor-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "e8c7ec60"
      ]
    },
    {
      name = "deployarn.active.dev.test-anchor.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/test-anchor-dev-e8c7ec60-CrossAccountRole-184ZW28M6RING"
      ]
    },
    {
      name = "stack.active.test-anchors-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "871fdc9c"
      ]
    },
    {
      name = "stack.active.test-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "561ccbad"
      ]
    },
    {
      name = "stack.active.test-reboot-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "2b0f12f3"
      ]
    },
    {
      name = "stack.active.test-seq-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "92392eac"
      ]
    },
    {
      name = "deployarn.active.dev.test-seq.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/test-seq-dev-92392eac-CrossAccountRole-1NZ6YTSK4RVT6"
      ]
    },
    {
      name = "deployarn.active.dev.test.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/test-dev-aa1f94c8-CrossAccountRole-1661CLJFSHL22"
      ]
    },
    {
      name = "stack.testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttes.dsd.io.",
      type = "TXT",
      ttl  = 300,
      records = [
        "testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest"
      ]
    },
    {
      name = "tipstaff-training.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.49.163.38"
      ]
    },
    {
      name = "tp.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-902.awsdns-48.net.",
        "ns-1290.awsdns-33.org.",
        "ns-1882.awsdns-43.co.uk.",
        "ns-275.awsdns-34.com."
      ]
    },
    {
      name = "transport.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "_amazonses.tribunals.dsd.io.",
      type = "TXT",
      ttl  = 1800,
      records = [
        "FotC+RkVmtjm3NvO4OIR5gsq8wlGxX1X7LdoJ1RITII="
      ]
    },
    {
      name = "tribunals2.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "stack.active.tsung-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "28cb76ef"
      ]
    },
    {
      name = "deployarn.active.dev.tsung.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/tsung-dev-28cb76ef-CrossAccountRole-MQGP3XI35FCF"
      ]
    },
    {
      name = "ursula.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "utiacdailycourtlist.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "stack.0a0e49a5.vault-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "0a0e49a5"
      ]
    },
    {
      name = "stack.active.vault-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "cacd90f1"
      ]
    },
    {
      name = "stack.omg1.vault-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "cacd90f1"
      ]
    },
    {
      name = "deployarn.active.dev.vault.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "False"
      ]
    },
    {
      name = "deployarn.omg1.dev.vault.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/vault-dev-cacd90f1-CrossAccountRole-OMJN8J9MSSO1"
      ]
    },
    {
      name = "victim_services.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "stack.active.vis-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "f3b14a61"
      ]
    },
    {
      name = "stack.3e929528.vis-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "3e929528"
      ]
    },
    {
      name = "stack.active.vis-prod.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "92ac1d7b"
      ]
    },
    {
      name = "stack.active.vis-staging.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "6baf3383"
      ]
    },
    {
      name = "deployarn.active.dev.vis.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/vis-dev-f3b14a61-CrossAccountRole-1NKTWEPROFTJM"
      ]
    },
    {
      name = "deployarn.active.prod.vis.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/vis-prod-92ac1d7b-CrossAccountRole-1QNJEEF7FTQ6N"
      ]
    },
    {
      name = "deployarn.active.staging.vis.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/vis-staging-6baf3383-CrossAccountRole-1RUFDC5RU4YJ"
      ]
    },
    {
      name = "vpn.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.77.178.131"
      ]
    },
    {
      name = "wardship.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.19.133.172"
      ]
    },
    {
      name = "webhelpdesk.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "52.19.187.43"
      ]
    },
    {
      name = "wiki.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.229.73.119"
      ]
    },
    {
      name = "wordpress_salt_test.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "wp.dsd.io.",
      type = "NS",
      ttl  = 300,
      records = [
        "ns-1486.awsdns-57.org.",
        "ns-787.awsdns-34.net.",
        "ns-194.awsdns-24.com.",
        "ns-1882.awsdns-43.co.uk."
      ]
    },
    {
      name = "x.dsd.io.",
      type = "A",
      ttl  = 60,
      records = [
        "54.229.49.135"
      ]
    },
    {
      name = "ybtj.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "yjbpublications.dsd.io.",
      type = "A",
      ttl  = 300,
      records = [
        "54.194.101.35"
      ]
    },
    {
      name = "yjils.dsd.io.",
      type = "CNAME",
      ttl  = 300,
      records = [
        "ec2-54-194-101-35.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "stack.active.zero-dev.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "5eb371e5"
      ]
    },
    {
      name = "deployarn.active.dev.zero.dsd.io.",
      type = "TXT",
      ttl  = 60,
      records = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/zero-dev-5eb371e5-CrossAccountRole-1ZGFKHJ28WLH"
      ]
    },
    {
      name = "courtfinder.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3NF1Z3NOM5OY2"
        name                   = "dsd-apps-staging-lb-1696229752.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "dashboard.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3NF1Z3NOM5OY2"
        name                   = "dsd-apps-staging-lb-1696229752.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "dev-et.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.atet-dev-0-elbdev1-5vhxqbcorqqk-747506187.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "domis.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3NF1Z3NOM5OY2"
        name                   = "dsd-apps-staging-lb-1696229752.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "elasticsearch.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2" # For CloudFront, this is always set to "Z2FDTNDATAQYW2" (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html)
        name                   = "dwfja2cimdbjj.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "formfinder.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3NF1Z3NOM5OY2"
        name                   = "dsd-apps-staging-lb-1696229752.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "gems.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "opendata.justice.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "maintain.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2" # For CloudFront, this is always set to "Z2FDTNDATAQYW2" (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html)
        name                   = "d2fdqongk9r3ym.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "noms-api-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.nomsapi-dev-apigateway-573982909.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "noms-api-preprod.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.nomsapi-preprod-apigateway-1432711636.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "repo.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "rosha.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "rot-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "rot-dev-9-elbrotde-1rahtcjnfk1fn-2080359527.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "rsr.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "devregistry.service-33c0d65b.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbdevre-l0e7axwzrfd-487189305.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "registry-dev.service-33c0d65b.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbregis-l9jj4g5ckwvw-1248066928.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "registry-v2.service-768454e0.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbregis-rxc9o137ny8k-544193084.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "registry.service-768454e0.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbregis-upxzq21e2bf5-1676511926.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunal.service-f6885b5e.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-a991huwg3wgs-1185343906.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "ci-hmcts.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "ci-hmcts-elbcihmc-1lftefg1dwwil-1739227107.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "ci-prod.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "ci-prod-2-elbcipro-1jjpvv5siesim-915507303.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "ci.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.ci-prod-2-elbcipro-1jjpvv5siesim-915507303.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "devregistry.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbdevre-l0e7axwzrfd-487189305.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "kibana-legacy.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.elk-prod-elbkiban-tx914z8cktu8-1176974228.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "kibana-staging.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2" # For CloudFront, this is always set to "Z2FDTNDATAQYW2" (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html)
        name                   = "d30qfwoo4m0v0d.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "www.kibana-staging.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z31RX3GZS94JZS"
        name                   = "kibana-staging.service.dsd.io."
        evaluate_target_health = false
      }
    },
    {
      name = "kibana.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2" # For CloudFront, this is always set to "Z2FDTNDATAQYW2" (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html)
        name                   = "dwfja2cimdbjj.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "www.kibana.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z31RX3GZS94JZS"
        name                   = "kibana.service.dsd.io."
        evaluate_target_health = false
      }
    },
    {
      name = "po.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "po-prod-553a-elbpo-2om62plim7cm-984555513.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "prodregistry.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3NF1Z3NOM5OY2"
        name                   = "docker-re-elbprodr-hbevs36h7zcv-1550709498.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "registry-dev.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbregis-l9jj4g5ckwvw-1248066928.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "registry-v2.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbregis-rxc9o137ny8k-544193084.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "registry.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "docker-re-elbregis-upxzq21e2bf5-1676511926.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "sentry-staging.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "sentry-st-elbsentr-1f3gedml5ov73-1658766537.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "sentry.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.sentry-pr-elbsentr-1anldhpnj4rk8-1574613568.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "status-staging.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "status-st-elbstatu-11nclt5x9b82a-690920659.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "status.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.awseb-awseb-s4t6mlupj7np-31851715.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "stunnel-redis-dev.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "elk-dev-9-elbstunn-12vcfmu9ommpz-2080647487.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "stunnel-redis-stg.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "elk-stagi-elbstunn-1kux5y9dx1apv-1629176595.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "stunnel-redis.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "elk-prod-elbstunn-7fng2mdj9m1f-813182817.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "vault-dev.service.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "vault-dev-elbvault-2n7xxzl638mh-723631155.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "serviceassessments.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "elasticsearch.staging-backoffice.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z31RX3GZS94JZS"
        name                   = "monitoring.staging-backoffice.dsd.io."
        evaluate_target_health = false
      }
    },
    {
      name = "kibana.staging-backoffice.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z31RX3GZS94JZS"
        name                   = "monitoring.staging-backoffice.dsd.io."
        evaluate_target_health = false
      }
    },
    {
      name = "staging-et.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.atet-stag-elbstagi-1rsc8jaqj2xer-572896377.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "staging-product-tracker.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.moj-produ-elbstagi-f27cyb85pklx-250525843.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-datacapture-dev-0931d739.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-1iu6bsfiyp2v7-62698893.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-datacapture-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-1iu6bsfiyp2v7-62698893.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-datacapture-staging-1049b7df.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-1wb6wn9xfexo8-1534905936.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-datacapture-staging.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "dualstack.tax-tribu-elbtaxtr-1wb6wn9xfexo8-1534905936.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "backup.tax-tribunals-datacapture-staging.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-1wb6wn9xfexo8-1534905936.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-downloader-dev-563646a3.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-1wgslhpbyu3yw-1470911889.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-downloader-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-1wgslhpbyu3yw-1470911889.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-downloader-staging-68ade87f.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-flukwjdtpqna-104748645.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-downloader-staging.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-flukwjdtpqna-104748645.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-fees-dev-0931d739.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-h7kiu9v96wom-1335287201.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-fees-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-h7kiu9v96wom-1335287201.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-internal-uploader-dev-563646a3.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "internal-tax-tribu-elbtaxtr-b3mvbezjssw0-438978380.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-internal-uploader-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "internal-tax-tribu-elbtaxtr-b3mvbezjssw0-438978380.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-internal-uploader-staging-68ade87f.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "internal-tax-tribu-elbtaxtr-1ifg4wpv0cd6l-1533491537.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-internal-uploader-staging.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z31RX3GZS94JZS"
        name                   = "tax-tribunals-internal-uploader-staging-68ade87f.dsd.io."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-uploader-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-1phg4u5zl91bh-591850276.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tax-tribunals-uploader-staging.dsd.io."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "tax-tribu-elbtaxtr-8b5enk4npxdw-2132578496.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "tribunals.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3NF1Z3NOM5OY2"
        name                   = "dsd-apps-staging-lb-1696229752.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "ucchome.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3AQBSTGFYJSTF"
        name                   = "s3-website-us-east-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
  ]
}

moved {
  from = module.dsd_io.aws_route53_record.default
  to   = module.dsd_io_records.aws_route53_record.this
}

moved {
  from = module.dsd_io.aws_route53_zone.default
  to   = module.dsd_io_zone.aws_route53_zone.this
}
