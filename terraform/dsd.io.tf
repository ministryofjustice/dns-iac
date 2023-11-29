module "dsd_io_zone" {
  source = "./modules/route53/zone"

  name = "dsd.io."

  tags = {
    component = "None"
  }
}

module "dsd_io_records" {
  source = "./modules/route53/records"

  zone_id = module.dsd_io_zone.zone_id

  records = [
    {
      name = "dsd.io."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-262.awsdns-32.com.",
        "ns-1454.awsdns-53.org.",
        "ns-1676.awsdns-17.co.uk.",
        "ns-613.awsdns-12.net."
      ]
    },
    {
      name = "dsd.io."
      type = "SOA"
      ttl  = 900
      records = [
        "ns-262.awsdns-32.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 30"
      ]
    },
    {
      name = "_amazonses.dsd.io."
      type = "TXT"
      ttl  = 1800
      records = [
        "H8uHHtYVLQ/jS2tDU/bfzD5fVCkOoMPcNIrY1EZMVzs=",
        "Eqf5BRJNj6Rn84SGmsbWc4YLnlRh2vabWbM62yGbMic="
      ]
    },
    {
      name = "_asvdns-2a0e1baa-d9c9-4659-9599-2147df1e2ff4.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "asvdns_e503e145-e8e6-4b67-8abe-f1bba45b6f03"
      ]
    },
    {
      name = "_dmarc.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=none;sp=none;fo=1;rua=mailto:dmarc-rua@dmarc.service.gov.uk; ruf=mailto:dmarc-ruf@dmarc.service.gov.uk"
      ]
    },
    {
      name = "csq3rs4wz5qtcmpg5zqhtu5slbbkcniu._domainkey.dsd.io."
      type = "CNAME"
      ttl  = 1800
      records = [
        "csq3rs4wz5qtcmpg5zqhtu5slbbkcniu.dkim.amazonses.com"
      ]
    },
    {
      name = "qv5qafpkf3ojddzw7222ktvoqmjckxzs._domainkey.dsd.io."
      type = "CNAME"
      ttl  = 1800
      records = [
        "qv5qafpkf3ojddzw7222ktvoqmjckxzs.dkim.amazonses.com"
      ]
    },
    {
      name = "smtpapi._domainkey.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPtW5iwpXVPiH5FzJ7Nrl8USzuY9zqqzjE0D1r04xDN6qwziDnmgcFNNfMewVKN2D1O+2J9N14hRprzByFwfQW76yojh54Xu3uSbQ3JP0A7k8o8GutRF8zbFUA8n0ZH2y0cIEjMliXY4W4LwPA7m4q0ObmvSjhd63O9d8z1XkUBwIDAQAB"
      ]
    },
    {
      name = "svkdg7soiv4iwzx6rczvjircjf42xdvi._domainkey.dsd.io."
      type = "CNAME"
      ttl  = 1800
      records = [
        "svkdg7soiv4iwzx6rczvjircjf42xdvi.dkim.amazonses.com"
      ]
    },
    {
      name = "_smtp._tls.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "stack.active.accelerated-claims-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "c3477c63"
      ]
    },
    {
      name = "stack.c3477c63.accelerated-claims-dev.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "c3477c63"
      ]
    },
    {
      name = "stack.7c928508.accelerated-claims-production.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "7c928508"
      ]
    },
    {
      name = "stack.active.accelerated-claims-production.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "4240dcce"
      ]
    },
    {
      name = "stack.46266fd5.accelerated-claims-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "46266fd5"
      ]
    },
    {
      name = "stack.active.accelerated-claims-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "bf86775e"
      ]
    },
    {
      name = "stack.bf86775e.accelerated-claims-staging.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "bf86775e"
      ]
    },
    {
      name = "deployarn.active.dev.accelerated-claims.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/accelerated-claims-dev-c3477c63-CrossAccountRole-1MLS9UADWIMB3"
      ]
    },
    {
      name = "deployarn.c3477c63.dev.accelerated-claims.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "arn:aws:iam::880656497252:role/accelerated-claims-dev-c3477c63-CrossAccountRole-1MLS9UADWIMB3"
      ]
    },
    {
      name = "deployarn.7c928508.production.accelerated-claims.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "arn:aws:iam::880656497252:role/accelerated-claims-production-424-CrossAccountRole-8ELG8P1CPKN7"
      ]
    },
    {
      name = "deployarn.active.production.accelerated-claims.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/accelerated-claims-production-424-CrossAccountRole-8ELG8P1CPKN7"
      ]
    },
    {
      name = "deployarn.active.staging.accelerated-claims.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/accelerated-claims-staging-bf8677-CrossAccountRole-HO34YH5ZZYJK"
      ]
    },
    {
      name = "deployarn.bf867755e.staging.accelerated-claims.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "arn:aws:iam::880656497252:role/accelerated-claims-staging-bf8677-CrossAccountRole-HO34YH5ZZYJK"
      ]
    },
    {
      name = "*.branchrunner.acceleratedpossession-dev.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "acceleratedpossession-dev.dsd.io"
      ]
    },
    {
      name = "acceleratedpossession.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1114.awsdns-11.org.",
        "ns-941.awsdns-53.net.",
        "ns-325.awsdns-40.com.",
        "ns-1772.awsdns-29.co.uk."
      ]
    },
    {
      name = "dev.administrativeappeals.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.administrativeappeals.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },
    {
      name = "archipelago.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "moj-archipelago.herokuapp.com."
      ]
    },
    {
      name = "asylum-support.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "azure.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-08.azure-dns.com.",
        "ns2-08.azure-dns.net.",
        "ns3-08.azure-dns.org.",
        "ns4-08.azure-dns.info."
      ]
    },
    {
      name = "cait.dsd.io."
      type = "NS"
      ttl  = 600
      records = [
        "ns-1096.awsdns-09.org.",
        "ns-1021.awsdns-63.net.",
        "ns-199.awsdns-24.com.",
        "ns-1729.awsdns-24.co.uk."
      ]
    },
    {
      name = "can-you-get-legal-aid.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "dev.carestandards.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.carestandards.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },
    {
      name = "carestandardstribunal.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "stack.active.ci-deploy-krs1.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "c1a26590"
      ]
    },
    {
      name = "stack.69690c5e.ci-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "69690c5e"
      ]
    },
    {
      name = "stack.b74a1674.ci-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "b74a1674"
      ]
    },
    {
      name = "stack.c2550272.ci-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "c2550272"
      ]
    },
    {
      name = "stack.e1666d1f.ci-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "e1666d1f"
      ]
    },
    {
      name = "stack.active.ci-hmcts.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "947d340b"
      ]
    },
    {
      name = "ci-lpa.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.76.188.44"
      ]
    },
    {
      name = "stack.active.ci-newprod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "1973491d"
      ]
    },
    {
      name = "stack.0c2e2de6.ci-prod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "0c2e2de6"
      ]
    },
    {
      name = "stack.active.ci-prod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "27a0c2a8"
      ]
    },
    {
      name = "stack.prod.ci-prod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "test"
      ]
    },
    {
      name = "stack.94f88ee6.ci-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "94f88ee6"
      ]
    },
    {
      name = "stack.active.ci-staging.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "badc95fa"
      ]
    },
    {
      name = "stack.b645b39b.ci-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "b645b39b"
      ]
    },
    {
      name = "stack.badc95fa.ci-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "badc95fa"
      ]
    },
    {
      name = "deployarn.active.newprod.ci.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/ci-newprod-1973491d-CrossAccountRole-FEY1ZV8UEB4W"
      ]
    },
    {
      name = "deployarn.active.prod.ci.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/ci-prod-d14b3969-CrossAccountRole-YRWUMSKNLFAG"
      ]
    },
    {
      name = "dev.cicap.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.cicap.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },

    {
      name = "cla-admin.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-154-59-10.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "cla-backend-training.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "backend-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-backend.dsd.io."
      type = "CNAME"
      ttl  = 60
      records = [
        "backend-integration.cla.dsd.io"
      ]
    },
    {
      name = "cla-callmeback-training.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "callmeback-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-docker.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.76.204.83"
      ]
    },
    {
      name = "cla-frontend-training.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "frontend-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-frontend.dsd.io."
      type = "CNAME"
      ttl  = 60
      records = [
        "frontend-integration.cla.dsd.io"
      ]
    },
    {
      name = "cla-public-training.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "public-training.cla.dsd.io"
      ]
    },
    {
      name = "cla-public.dsd.io."
      type = "CNAME"
      ttl  = 60
      records = [
        "frontend-integration.cla.dsd.io"
      ]
    },
    {
      name = "cla-registry.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.16.69.126"
      ]
    },
    {
      name = "cla-training.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "frontend-training.cla.dsd.io"
      ]
    },
    {
      name = "cla.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-659.awsdns-18.net",
        "ns-1490.awsdns-58.org",
        "ns-84.awsdns-10.com",
        "ns-1853.awsdns-39.co.uk"
      ]
    },
    {
      name = "cla_providers_directory.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "contact-moj.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z3GKZC51ZF0DB4"
        name                   = "s3-website.eu-west-2.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "core.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1119.awsdns-11.org.",
        "ns-442.awsdns-55.com.",
        "ns-1897.awsdns-45.co.uk.",
        "ns-714.awsdns-25.net."
      ]
    },
    {
      name = "stack.910a5789.courtfinder-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "910a5789"
      ]
    },
    {
      name = "stack.a14bdbf7.courtfinder-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "a14bdbf7"
      ]
    },
    {
      name = "stack.active.courtfinder-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "97187eb9"
      ]
    },
    {
      name = "stack.active.courtfinder-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "dc5f8e4d"
      ]
    },
    {
      name = "courtfinder-test.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-229-204-208.eu-west-1.compute.amazonaws.com"
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
      name = "_amazonses.courtfinder.dsd.io."
      type = "TXT"
      ttl  = 1800
      records = [
        "G1EwlYcGmbhzmDSuyG/gZq2q7QCQx6EFWpaR00Yn8yQ="
      ]
    },
    {
      name = "kwhainhpqlxqd3rncd7msr22adgpmc4e._domainkey.courtfinder.dsd.io."
      type = "CNAME"
      ttl  = 1800
      records = [
        "kwhainhpqlxqd3rncd7msr22adgpmc4e.dkim.amazonses.com"
      ]
    },
    {
      name = "ul6mlfh6npxr5mfjd65qlhn7ut7jleo4._domainkey.courtfinder.dsd.io."
      type = "CNAME"
      ttl  = 1800
      records = [
        "ul6mlfh6npxr5mfjd65qlhn7ut7jleo4.dkim.amazonses.com"
      ]
    },
    {
      name = "zlo2uoj5k3ergpqnghq6uhkcjtjn4bcw._domainkey.courtfinder.dsd.io."
      type = "CNAME"
      ttl  = 1800
      records = [
        "zlo2uoj5k3ergpqnghq6uhkcjtjn4bcw.dkim.amazonses.com"
      ]
    },
    {
      name = "deployarn.active.dev.courtfinder.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/courtfinder-dev-97187eb9-CrossAccountRole-ZOS047VPE89X"
      ]
    },
    {
      name = "deployarn.active.staging.courtfinder.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/courtfinder-staging-dc5f8e4d-CrossAccountRole-6BX6WNAI0HKC"
      ]
    },
    {
      name = "courtfines.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "62.208.144.80"
      ]
    },
    {
      name = "crimebillingonline.dsd.io."
      type = "NS"
      ttl  = 60
      records = [
        "ns-695.awsdns-22.net.",
        "ns-446.awsdns-55.com.",
        "ns-1859.awsdns-40.co.uk.",
        "ns-1078.awsdns-06.org."
      ]
    },
    {
      name = "cs_blog.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "ctf.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "dacp.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.19.133.172"
      ]
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
      name = "et.dashboard.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "defence-request.dsd.io."
      type = "NS"
      ttl  = 3600
      records = [
        "ns-542.awsdns-03.net.",
        "ns-155.awsdns-19.com.",
        "ns-1949.awsdns-51.co.uk.",
        "ns-1329.awsdns-38.org."
      ]
    },
    {
      name = "stack.active.demo-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "d045d40c"
      ]
    },
    {
      name = "demo-intranet.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.246.235.16"
      ]
    },
    {
      name = "deployarn.active.dev.demo.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/demo-dev-f947d970-CrossAccountRole-NBGJRG18K8YD"
      ]
    },
    {
      name = "demo1-intranet.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo2-intranet.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo3-intranet.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo4-intranet.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "demo5-intranet.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "demo-intranet.dsd.io"
      ]
    },
    {
      name = "dev-et.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "dualstack.atet-dev-0-elbdev1-5vhxqbcorqqk-747506187.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "dev-lfc.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "dev.laafeecalculator.dsd.io."
      ]
    },
    {
      name = "stack.33c0d65b.docker-registry-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "33c0d65b"
      ]
    },
    {
      name = "stack.active.docker-registry-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "33c0d65b"
      ]
    },
    {
      name = "stack.b5203942.docker-registry-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "b5203942"
      ]
    },
    {
      name = "stack.b9dedd13.docker-registry-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "b9dedd13"
      ]
    },
    {
      name = "stack.devreg.docker-registry-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "c87a6ccc"
      ]
    },
    {
      name = "stack.active.docker-registry-newprod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "b1ac058e"
      ]
    },
    {
      name = "stack.active.docker-registry-prod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "768454e0"
      ]
    },
    {
      name = "stack.green.docker-registry-prod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "768454e0"
      ]
    },
    {
      name = "stack.active.docker-registry-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "3602d974"
      ]
    },
    {
      name = "deployarn.33c0d65b.dev.docker-registry.dsd.io."
      type = "TXT"
      ttl  = 300
      records = [
        "arn:aws:iam::880656497252:role/docker-registry-dev-33c0d65b-CrossAccountRole-1IQDI7HUS9BZA"
      ]
    },
    {
      name = "deployarn.active.dev.docker-registry.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/docker-registry-dev-33c0d65b-CrossAccountRole-1IQDI7HUS9BZA"
      ]
    },
    {
      name = "deployarn.active.newprod.docker-registry.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/docker-registry-newprod-b1ac058e-CrossAccountRole-1U81JQ26W2GL8"
      ]
    },
    {
      name = "deployarn.active.prod.docker-registry.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/docker-registry-prod-768454e0-CrossAccountRole-1Y9KUI5NRMLI"
      ]
    },
    {
      name = "deployarn.green.prod.docker-registry.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/docker-registry-prod-768454e0-CrossAccountRole-1Y9KUI5NRMLI"
      ]
    },
    {
      name = "deployarn.standby.prod.docker-registry.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "None"
      ]
    },
    {
      name = "dockerails-dev.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "elb-dev-623140939.eu-west-1.elb.amazonaws.com."
      ]
    },
    {
      name = "dockerails.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1163.awsdns-17.org.",
        "ns-1590.awsdns-06.co.uk.",
        "ns-842.awsdns-41.net.",
        "ns-421.awsdns-52.com."
      ]
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
      name = "familyassessment.dsd.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1293.awsdns-33.org",
        "ns-571.awsdns-07.net",
        "ns-1735.awsdns-24.co.uk",
        "ns-458.awsdns-57.com"
      ]
    },
    {
      name = "dsd_blog.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "e6211db0073064ade016ad4558767968.dsd.io."
      type = "CNAME"
      ttl  = 60
      records = [
        "www.digital.justice.gov.uk."
      ]
    },
    {
      name = "eatd.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "elasticsearch.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "dwfja2cimdbjj.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "_29e6fa072cabf1c4c8ed043652cb77dc.elasticsearch.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "_68ab398fca862a92da625f9b21effe6d.acm-validations.aws."
      ]
    },
    {
      name = "_48a95b0f6b9383b5850ca52940494730.www.elasticsearch.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "_54ed4777b69c3ce620ad61078111bf87.acm-validations.aws."
      ]
    },
    {
      name = "stack.active.elk-experimental.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "3341fb85"
      ]
    },
    {
      name = "stack.active.elk-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "be1d76ab"
      ]
    },
    {
      name = "deployarn.active.experimental.elk.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/elk-experimental-3341fb85-CrossAccountRole-1GIT2DB1SXO3L"
      ]
    },
    {
      name = "deployarn.prod5x.prod.elk.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/elk-prod-6591eacf-CrossAccountRole-1V5OJXWLFEXTG"
      ]
    },
    {
      name = "employmentappeals.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "dev.employmentappeals.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.employmentappeals.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },
    {
      name = "stack.active.es-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "8f5874e1"
      ]
    },
    {
      name = "es-hmcts.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "search-elasticseach-hmcts-z5qgdijlc4irggzljjowt2xwby.eu-west-1.es.amazonaws.com"
      ]
    },
    {
      name = "master.active.dev.es.dsd.io."
      type = "A"
      ttl  = 60
      records = [
        "54.154.200.180"
      ]
    },
    {
      name = "et.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1373.awsdns-43.org",
        "ns-459.awsdns-57.com",
        "ns-1645.awsdns-13.co.uk",
        "ns-731.awsdns-27.net"
      ]
    },
    {
      name = "fala.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1159.awsdns-16.org",
        "ns-126.awsdns-15.com",
        "ns-932.awsdns-52.net",
        "ns-1885.awsdns-43.co.uk"
      ]
    },
    {
      name = "familymediators.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1538.awsdns-00.co.uk.",
        "ns-1021.awsdns-63.net.",
        "ns-1399.awsdns-46.org.",
        "ns-213.awsdns-26.com."
      ]
    },
    {
      name = "familymediatorsapi.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-794.awsdns-35.net.",
        "ns-1106.awsdns-10.org.",
        "ns-205.awsdns-25.com.",
        "ns-2028.awsdns-61.co.uk."
      ]
    },
    {
      name = "fatt.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "feeremissions.dsd.io."
      type = "NS"
      ttl  = 86400
      records = [
        "ns-1263.awsdns-29.org.",
        "ns-847.awsdns-41.net.",
        "ns-70.awsdns-08.com.",
        "ns-1921.awsdns-48.co.uk."
      ]
    },
    {
      name = "dev.financeandtax.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.financeandtax.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
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
      name = "ftiacdailycourtlist.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-52-31-70-66.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "ftp.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.208.251.221"
      ]
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
      name = "git.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "172.22.8.3"
      ]
    },
    {
      name = "gl_summit.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "stack.active.glimr-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "f6e2e5ff"
      ]
    },
    {
      name = "helpwithcourtfees.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-2005.awsdns-58.co.uk.",
        "ns-864.awsdns-44.net.",
        "ns-41.awsdns-05.com.",
        "ns-1145.awsdns-15.org."
      ]
    },
    {
      name = "hillsborough.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "hmpps.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns4-09.azure-dns.info.",
        "ns3-09.azure-dns.org.",
        "ns2-09.azure-dns.net.",
        "ns1-09.azure-dns.com."
      ]
    },
    {
      name = "stack.active.hubot-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "c1b50cae"
      ]
    },
    {
      name = "stack.active.hubot-dev2.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "777da8bf"
      ]
    },
    {
      name = "deployarn.active.dev.hubot.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/hubot-dev-c1b50cae-CrossAccountRole-33QFW2Y4G9F2"
      ]
    },
    {
      name = "stack.active.huboto-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "f6bf14f5"
      ]
    },
    {
      name = "deployarn.active.dev.huboto.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/huboto-dev-f6bf14f5-CrossAccountRole-8DOVJ11OKAA0"
      ]
    },
    {
      name = "hwf.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-191.awsdns-23.com.",
        "ns-1173.awsdns-18.org.",
        "ns-2004.awsdns-58.co.uk.",
        "ns-685.awsdns-21.net."
      ]
    },
    {
      name = "dev.immigrationservices.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.immigrationservices.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },
    {
      name = "immigrationservicestribunal.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "dev.informationrights.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.informationrights.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },
    {
      name = "informationtribunal.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "int-prisonvisits.dsd.io."
      type = "A"
      ttl  = 30
      records = [
        "172.22.16.3"
      ]
    },
    {
      name = "*.int-prisonvisits.dsd.io."
      type = "A"
      ttl  = 30
      records = [
        "172.22.16.3"
      ]
    },
    {
      name = "dev.internal-router.dsd.io."
      type = "CNAME"
      ttl  = 60
      records = [
        "internal-ELBinter-Z5I2NME4SF0S-1252863027.eu-west-1.elb.amazonaws.com"
      ]
    },
    {
      name = "intra.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-537.awsdns-03.net",
        "ns-143.awsdns-17.com",
        "ns-1351.awsdns-40.org",
        "ns-1952.awsdns-52.co.uk"
      ]
    },
    {
      name = "deployarn.active.dev.intranet-jenkins.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/intranet-jenkins-dev-CrossAccountRole-TWIMA75Q44MY"
      ]
    },
    {
      name = "is-prod.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-39.awsdns-04.com.",
        "ns-1378.awsdns-44.org.",
        "ns-619.awsdns-13.net.",
        "ns-1991.awsdns-56.co.uk."
      ]
    },
    {
      name = "is.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1723.awsdns-23.co.uk.",
        "ns-306.awsdns-38.com.",
        "ns-1433.awsdns-51.org.",
        "ns-554.awsdns-05.net."
      ]
    },
    {
      name = "jenkins-alpha.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "172.22.6.53"
      ]
    },
    {
      name = "jenkins-next.dsd.io."
      type = "CNAME"
      ttl  = 3600
      records = [
        "ec2-54-194-212-120.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "jenkins-old.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.246.250.229"
      ]
    },
    {
      name = "jenkins-ubuntu.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.194.38.138"
      ]
    },
    {
      name = "jenkins.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-212-120.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "jonathan-wood.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "jurorsummons.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.73.202.113"
      ]
    },
    {
      name = "jurysummons.dsd.io."
      type = "NS"
      ttl  = 60
      records = [
        "ns-397.awsdns-49.com.",
        "ns-687.awsdns-21.net.",
        "ns-1832.awsdns-37.co.uk.",
        "ns-1054.awsdns-03.org."
      ]
    },
    {
      name = "justice-intranet.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-662.awsdns-18.net.",
        "ns-60.awsdns-07.com.",
        "ns-1926.awsdns-48.co.uk.",
        "ns-1328.awsdns-38.org."
      ]
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
      name = "kibana.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "mon.dsd.io"
      ]
    },
    {
      name = "stack.active.ks-deploy-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "203cda55"
      ]
    },
    {
      name = "kube.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-583.awsdns-08.net.",
        "ns-453.awsdns-56.com.",
        "ns-1187.awsdns-20.org.",
        "ns-1636.awsdns-12.co.uk."
      ]
    },
    {
      name = "laa-rota.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-487.awsdns-60.com.",
        "ns-1259.awsdns-29.org.",
        "ns-804.awsdns-36.net.",
        "ns-1650.awsdns-14.co.uk."
      ]
    },
    {
      name = "laafeecalculator.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1147.awsdns-15.org.",
        "ns-620.awsdns-13.net.",
        "ns-104.awsdns-13.com.",
        "ns-1794.awsdns-32.co.uk."
      ]
    },
    {
      name = "dev.landregistrationdivision.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.landregistrationdivision.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },
    {
      name = "dev.landschamber.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-dev-c4ercybwaubzbmfn.z01.azurefd.net"
      ]
    },
    {
      name = "staging.landschamber.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-stg-abfwhrf8g0btcqhe.z01.azurefd.net"
      ]
    },
    {
      name = "landstribunal.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "52.208.251.221"
      ]
    },
    {
      name = "local.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "127.0.0.1"
      ]
    },
    {
      name = "*.local.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "127.0.0.1"
      ]
    },
    {
      name = "lpadown.dsd.io."
      type = "A"
      ttl  = 60
      records = [
        "54.72.5.215"
      ]
    },
    {
      name = "lpawiki.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.229.49.163"
      ]
    },
    {
      name = "maildrop.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-72-59-165.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "maintain.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d2fdqongk9r3ym.cloudfront.net."
        evaluate_target_health = false
      }
    },
    {
      name = "_a5c3b9452c35b35389c1f1d9320e5c75.maintain.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "_dbdace06d3074d2a389c061c507bdd98.acm-validations.aws."
      ]
    },
    {
      name = "maintenance.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.93.44.205"
      ]
    },
    {
      name = "makeaplea.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1588.awsdns-06.co.uk",
        "ns-995.awsdns-60.net",
        "ns-1282.awsdns-32.org",
        "ns-204.awsdns-25.com"
      ]
    },
    {
      name = "mantis_lpa.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-54-194-11-96.eu-west-1.compute.amazonaws.com."
      ]
    },
    {
      name = "stack.green.mattp-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "03188574"
      ]
    },
    {
      name = "deployarn.active.dev.mattp.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "False"
      ]
    },
    {
      name = "mediation-content.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "mediation-content.dsd.io.herokudns.com"
      ]
    },
    {
      name = "stack.active.moj-product-dashboard-deploy-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "09162b05"
      ]
    },
    {
      name = "stack.active.moj-product-dashboard-prod.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "360e31aa"
      ]
    },
    {
      name = "stack.active.moj-product-dashboard-staging.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "dff14c94"
      ]
    },
    {
      name = "deployarn.active.prod.moj-product-dashboard.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/moj-product-dashboard-prod-360e31-CrossAccountRole-VPW3FE8SHPGI"
      ]
    },
    {
      name = "deployarn.active.staging.moj-product-dashboard.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/moj-product-dashboard-staging-dff-CrossAccountRole-OQVFUENUWWWG"
      ]
    },
    {
      name = "mojintranet.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1618.awsdns-10.co.uk.",
        "ns-666.awsdns-19.net.",
        "ns-371.awsdns-46.com.",
        "ns-1471.awsdns-55.org."
      ]
    },
    {
      name = "mon.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.194.12.181"
      ]
    },
    {
      name = "stack.active.my-project-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "addff241"
      ]
    },
    {
      name = "deployarn.active.dev.my-project.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/my-project-dev-addff241-CrossAccountRole-HT3QTKUDX2NK"
      ]
    },
    {
      name = "stack.active.myproject-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "5fd60641"
      ]
    },
    {
      name = "deployarn.active.dev.myproject.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "arn:aws:iam::880656497252:role/myproject-dev-5fd60641-CrossAccountRole-Y33DDZUEPOUW"
      ]
    },
    {
      name = "stack.active.mything-dev.dsd.io."
      type = "TXT"
      ttl  = 60
      records = [
        "01f9f68f"
      ]
    },
    {
      name = "dev.nomis-api-access.dsd.io."
      type = "NS"
      ttl  = 1500
      records = [
        "ns-1354.awsdns-41.org.",
        "ns-1627.awsdns-11.co.uk.",
        "ns-654.awsdns-17.net.",
        "ns-206.awsdns-25.com."
      ]
    },
    {
      name = "prod.nomis-api-access.dsd.io."
      type = "NS"
      ttl  = 1500
      records = [
        "ns-1171.awsdns-18.org.",
        "ns-302.awsdns-37.com.",
        "ns-906.awsdns-49.net.",
        "ns-1794.awsdns-32.co.uk."
      ]
    },
    {
      name = "noms-api-dev.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "dualstack.nomsapi-dev-apigateway-573982909.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "noms-api-preprod.dsd.io."
      type = "A"
      alias = {
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "dualstack.nomsapi-preprod-apigateway-1432711636.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "noms.dsd.io."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-07.azure-dns.com.",
        "ns2-07.azure-dns.net.",
        "ns3-07.azure-dns.org.",
        "ns4-07.azure-dns.info."
      ]
    },
    {
      name = "search.noms.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-52-212-199-217.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "openjustice.dsd.io."
      type = "CNAME"
      ttl  = 300
      records = [
        "ec2-34-248-250-65.eu-west-1.compute.amazonaws.com"
      ]
    },
    {
      name = "opg-backoffice-ci.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.77.190.125"
      ]
    },
    {
      name = "opg-backoffice-dev-jenkins-build.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.171.153.71"
      ]
    },
    {
      name = "opg-backoffice-dev-jenkins-deploy.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.76.55.169"
      ]
    },
    {
      name = "opg-backoffice-dev-jenkins.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.171.121.42"
      ]
    },
    {
      name = "opg-backoffice-integration.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.194.221.57"
      ]
    },
    {
      name = "ddc.opg-backoffice-integration.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.194.221.57"
      ]
    },
    {
      name = "opg-backoffice-jenkins.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.77.174.13"
      ]
    },
    {
      name = "opg-backoffice-qa.dsd.io."
      type = "A"
      ttl  = 300
      records = [
        "54.171.58.225"
      ]
    }
  ]
}