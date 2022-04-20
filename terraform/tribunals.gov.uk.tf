module "tribunals_gov_uk" {
  source = "./modules/route53"

  domain      = "tribunals.gov.uk"
  description = "Tribunals decisions database"

  records = [
    {
      name = "tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "tribunals.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-314.awsdns-39.com.",
        "ns-1393.awsdns-46.org.",
        "ns-539.awsdns-03.net.",
        "ns-1659.awsdns-15.co.uk."
      ]
    },
    {
      name = "adjudicationpanel.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www.adjudicationpanel.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "adjudicationpanel.tribunals.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "administrativeappeals.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "www.administrativeappeals.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "administrativeappeals.tribunals.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "www.charity.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "charity.tribunals.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "consumercreditappeals.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www.consumercreditappeals.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "consumercreditappeals.tribunals.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "administrativeappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.administrativeappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.administrativeappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "asylumsupport.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "carestandards.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.carestandards.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.carestandards.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "charity.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "cicap.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.cicap.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.cicap.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "claimsmanagement.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "consumercreditappeals.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "employmentappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.employmentappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.employmentappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "estateagentappeals.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "financeandtax.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.financeandtax.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.financeandtax.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "immigrationservices.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.immigrationservices.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.immigrationservices.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "informationrights.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.informationrights.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.informationrights.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "landregistrationdivision.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.landregistrationdivision.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.landregistrationdivision.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "landschamber.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.landschamber.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.landschamber.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "phl.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "siac.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "tax.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "taxandchancery_ut.decisions.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "transportappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "_37e3262a11ec2693b0aba5c341e70f27.transportappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "900B72C230551A691158CD1F9C7ED973.550A08C0FF9EE4BEC3F203DF229DBE0C.cef72d1b410815463290.comodoca.com."
      ]
    },
    {
      name = "afdverify.transportappeals.decisions.tribunals.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "afdverify.sdshmcts-prod.azurefd.net"
      ]
    },
    {
      name = "estateagentappeals.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www.estateagentappeals.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "estateagentappeals.tribunals.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "fhsaa.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www.fhsaa.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "fhsaa.tribunals.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "adminappeals.reports.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "siac.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "www.siac.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "siac.tribunals.gov.uk."
        evaluate_target_health = false
      }
    },
    {
      name = "sscs.venues.tribunals.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "34.243.192.28"
      ]
    },
    {
      name = "www.tribunals.gov.uk."
      type = "A"
      alias = {
        zone_id                = "self"
        name                   = "tribunals.gov.uk."
        evaluate_target_health = false
      }
    }
  ]

  tags = {
    component = "None"
  }
}