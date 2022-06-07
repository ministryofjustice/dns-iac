module "video_service_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "video.service.justice.gov.uk"
  tags = {
    component = "None"
  }
}

module "video_service_justice_gov_uk_records" {
  source = "./modules/route53/records"

  zone_id = module.video_service_justice_gov_uk_zone.zone_id

  records = [
    {
      name = "video.service.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-52.awsdns-06.com.",
        "ns-936.awsdns-53.net.",
        "ns-1867.awsdns-41.co.uk.",
        "ns-1464.awsdns-55.org."
      ]
    },
    {
      name = "playback1.video.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    },
    {
      name = "playback2.video.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    },
    {
      name = "playback3.video.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    },
    {
      name = "playback4.video.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    },
    {
      name = "playback5.video.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    },
    {
      name = "playback6.video.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    },
    {
      name = "sip.video.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.142"
      ]
    },
    {
      name = "vap-pexconf004.video.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.142"
      ]
    },
    {
      name = "vap-pexrpturn002.video.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.150"
      ]
    },
    {
      name = "webrtc.video.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.150"
      ]
    },
    {
      name            = "playback.video.service.justice.gov.uk"
      type            = "A"
      ttl             = 60
      health_check_id = aws_route53_health_check.playback_video_service_justice_gov_uk_failover_primary.id
      set_identifier  = "playback-Primary"
      records = [
        "217.135.104.158"
      ]
      failover_routing_policy = {
        type = "PRIMARY"
      }
    },
    {
      # NOTE: The secondary health check isn't set in the original configuration
      name           = "playback.video.service.justice.gov.uk"
      type           = "A"
      ttl            = 60
      set_identifier = "playback-Secondary"
      records = [
        "213.216.136.30"
      ]
      failover_routing_policy = {
        type = "SECONDARY"
      }
    }
  ]
}

moved {
  from = module.video_service_justice_gov_uk.aws_route53_record.default
  to   = module.video_service_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.video_service_justice_gov_uk.aws_route53_zone.default
  to   = module.video_service_justice_gov_uk_zone.aws_route53_zone.this
}

#################
# Health checks #
#################
resource "aws_route53_health_check" "playback_video_service_justice_gov_uk_failover_primary" {
  fqdn              = "playback.video.service.justice.gov.uk"
  ip_address        = "217.135.104.158"
  port              = 443
  type              = "HTTPS"
  failure_threshold = "3"
  request_interval  = "30"

  tags = {
    Name = "playback.video.service.justice.gov.uk"
  }
}

resource "aws_route53_health_check" "playback_video_service_justice_gov_uk_failover_secondary" {
  ip_address        = "217.135.104.158"
  port              = 1640
  type              = "TCP"
  failure_threshold = "3"
  request_interval  = "30"

  tags = {
    Name = "playback.video.service.justice.gov.uk"
  }
}

moved {
  from = module.playback_video_service_justice_gov_uk_failover.aws_route53_record.primary
  to   = module.video_service_justice_gov_uk_records.aws_route53_record.this["playback.video.service.justice.gov.uk_A_playback-Primary"]
}

moved {
  from = module.playback_video_service_justice_gov_uk_failover.aws_route53_record.secondary
  to   = module.video_service_justice_gov_uk_records.aws_route53_record.this["playback.video.service.justice.gov.uk_A_playback-Secondary"]
}
