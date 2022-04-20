module "possessionclaim_gov_uk" {
  source = "./modules/route53"

  domain      = "possessionclaim.gov.uk"
  description = ""

  records = [
    {
      name = "possessionclaim.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z3GKZC51ZF0DB4"
        name                   = "s3-website.eu-west-2.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "possessionclaim.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-905.awsdns-49.net.",
        "ns-1832.awsdns-37.co.uk.",
        "ns-205.awsdns-25.com.",
        "ns-1307.awsdns-35.org."
      ]
    },
    {
      name = "_3c4849ed54f341b9aba59188d7dcd9be.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "67E2325827F0C828D075C882B53FA5B1.357C35E5E1688CFAC55CBC322B0B77D2.bd8b018945a0b4de2240.comodoca.com."
      ]
    },
    {
      name = "_66ee3bda7420a46d671afa7a72f2c499.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "6B1F47285E7B5055283DA61EAF0F60C8.5F459D2D7B6B7412D338AD57E4155353.5d9e37d3db09f8460ba8.comodoca.com."
      ]
    },
    {
      name = "_9f573e8be4c5893470ae4d88505c58ca.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "4775D20E0D9C04957A93CCE03062D67A.D25BE47FBC5EEEB12036A79B423BF882.bc45ee46080d94757d84.comodoca.com."
      ]
    },
    {
      name = "_ed60922ca184fbf575a566d49400efd0.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_fb80be93cc626e2e71c64aab5097d5b2.gxwgcdsjsl.acm-validations.aws."
      ]
    },
    {
      name = "afdverify.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.hmcts-live-ext.azurefd.net"
      ]
    },
    {
      name = "www.backend.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.66"
      ]
    },
    {
      name = "www.birmingham.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.69"
      ]
    },
    {
      name = "www.bristol.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.68"
      ]
    },
    {
      name = "www.cardiff.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.67"
      ]
    },
    {
      name = "www.leeds.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.70"
      ]
    },
    {
      name = "www.london1.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.71"
      ]
    },
    {
      name = "www.london2.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.72"
      ]
    },
    {
      name = "www.manchester.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.73"
      ]
    },
    {
      name = "_067d892b70c2bb3950c426cd6ff6bea5.testclaim.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "17CFF248A389A233734938C49982E31E.370B23DDFA4864DD8E06ED50223B66D5.c4fcb7b4d480d8978c70.comodoca.com."
      ]
    },
    {
      name = "_234e522d4eb1ac1a9af918f67630f34a.testclaim.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "9A978A8CB8725343DBF6D357A2D1F25A.7F6CE2E6378D25D9A60F60F4482F5A49.1458e84a7f1a80984de0.comodoca.com."
      ]
    },
    {
      name = "www.testclaim.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.74"
      ]
    },
    {
      name = "_97a1c90ba72d4dfd203a97b194f4db50.www.testclaim.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "3ACAAED84D16F881118857BDF3EEC822.E575A3A9575B18450DB9538219EAD859.f3ac63c91272f19ce97c.comodoca.com."
      ]
    },
    {
      name = "www.training01.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.69"
      ]
    },
    {
      name = "www.training02.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.70"
      ]
    },
    {
      name = "www.training03.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.73"
      ]
    },
    {
      name = "www.training04.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.71"
      ]
    },
    {
      name = "www.training05.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.72"
      ]
    },
    {
      name = "www.training06.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.68"
      ]
    },
    {
      name = "www.training07.possessionclaim.gov.uk."
      type = "A"
      ttl  = 1800
      records = [
        "62.208.144.67"
      ]
    },
    {
      name = "www.possessionclaim.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-live-ext.azurefd.net"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
