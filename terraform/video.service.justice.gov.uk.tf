module "video_service_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "video.service.justice.gov.uk"
  description = ""

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
    }
  ]

  tags = {
    component = "None"
  }
}

####################
# Failover routing #
####################
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

module "playback_video_service_justice_gov_uk_failover" {
  source = "./modules/failover-routing"

  zone_id = module.video_service_justice_gov_uk.zone_id
  name = "playback.video.service.justice.gov.uk"
  ttl = 60

  primary_records = ["217.135.104.158"]
  secondary_records = ["213.216.136.30"]

  primary_health_check_id = aws_route53_health_check.playback_video_service_justice_gov_uk_failover_primary.id
  secondary_health_check_id = null # The secondary health check isn't set in the original configuration

  primary_identifier = "playback-Primary"
  secondary_identifier = "playback-Secondary"
}
