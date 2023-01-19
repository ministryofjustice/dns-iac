module "victiminformationservice_org_uk_zone" {
  source = "./modules/route53/zone"

  name = "victiminformationservice.org.uk"
  tags = {
    application            = "Victims Information Service/VIS"
    business-unit          = "HMCTS"
    infrastructure-support = "HMCTS sustainingteamsupport@hmcts.net"
    owner                  = "HMCTS sustainingteamsupport@hmcts.net"
    component              = "None"
  }
}

module "victiminformationservice_org_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.victiminformationservice_org_uk_zone.zone_id

  records = [
    {
      name = "victiminformationservice.org.uk"
      type = "A"

      set_identifier = "Heroku vis"


      weighted_routing_policy = {
        weight = 4
      }

      alias = {
        name                   = "tribunals-nginx-1184258455.eu-west-1.elb.amazonaws.com"
        zone_id                = "Z32O12XQLNTSW2"
        evaluate_target_health = false
      }
    },
    {
      name = "victiminformationservice.org.uk"
      type = "NS"
      ttl  = 172800
      records = [
        "ns-173.awsdns-21.com.",
        "ns-1633.awsdns-12.co.uk.",
        "ns-857.awsdns-43.net.",
        "ns-1447.awsdns-52.org."
      ]
    },
    {
      name = "victiminformationservice.org.uk"
      type = "SOA"
      ttl  = 300
      records = [
        "ns-173.awsdns-21.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "victiminformationservice.org.uk"
      type = "TXT"
      ttl  = 60
      records = [
        "loaderio-217b2f50de060e5b815ac3b23c5e5322"
      ]
    },
    {
      name = "_763372be03a4e87a04610fa50b15adbd.victiminformationservice.org.uk"
      type = "CNAME"
      ttl  = 60
      records = [
        "_a5501a920598b4c1cad73a7000cd5db6.tfmgdnztqk.acm-validations.aws."
      ]
    },
    {
      name = "cf.victiminformationservice.org.uk"
      type = "CNAME"
      ttl  = 60
      records = [
        "dzul9lxod3kls.cloudfront.net"
      ]
    },
    {
      name = "www.victiminformationservice.org.uk"
      type = "CNAME"
      ttl  = 300
      records = [
        "victiminformationservice.org.uk"
      ]
    },
    {
      name = "_c9a52b9d5d83912d1152f98d732842cc.www.victiminformationservice.org.uk"
      type = "CNAME"
      ttl  = 60
      records = [
        "_7f29fa4f5dbde498b14c924dbb40282f.tfmgdnztqk.acm-validations.aws."
      ]
    },
  ]
}

