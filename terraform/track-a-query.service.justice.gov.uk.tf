module "track_a_query_service_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "track-a-query.service.justice.gov.uk"
  description = "Managed by Terraform"

  records = [
    {
      name = "track-a-query.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "haproxy-track-a-query-1357848984.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "track-a-query.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-791.awsdns-34.net.",
        "ns-1370.awsdns-43.org.",
        "ns-1708.awsdns-21.co.uk.",
        "ns-102.awsdns-12.com."
      ]
    },
    {
      name = "_8b2e24829facb29a9c07f2aeee8be1a2.track-a-query.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_ca3a7b2a2d1b0dac74149a9ef2722ecb.tljzshvwok.acm-validations.aws."
      ]
    },
    {
      name = "demo.track-a-query.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "haproxy-track-a-query-1357848984.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "_f2b0f87b7ff687cdac197f4b4dbbd3a2.demo.track-a-query.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_0e040d3831af1fc5b71f6973e95589f7.tljzshvwok.acm-validations.aws."
      ]
    },
    {
      name = "dev.track-a-query.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "haproxy-track-a-query-1357848984.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "_5ac884fc9871bb8ceff30a90cc36f0c6.dev.track-a-query.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_9b8e904fa6b4b3bfc53dbb4cdcf4a1c3.tljzshvwok.acm-validations.aws."
      ]
    },
    {
      name = "staging.track-a-query.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = data.aws_elb_hosted_zone_id.eu-west-1.id
        name                   = "haproxy-track-a-query-1357848984.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = true
      }
    },
    {
      name = "_6da3863e64f60bdf1388f59b85024b60.staging.track-a-query.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "_ea040e733416287ac2771bb91a04a1a3.tljzshvwok.acm-validations.aws."
      ]
    }
  ]
}
