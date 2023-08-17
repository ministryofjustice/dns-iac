module "video_service_justice_gov_uk_zone" {
  source = "./modules/route53/zone"
  name = "video.service.justice.gov.uk."
  
  
  tags = {
    "component" = "None"
  }
}

module "video_service_justice_gov_uk_records" {
  source = "./modules/route53/records"
  zone_id = module.video_service_justice_gov_uk_zone.zone_id
  
  records = [
    {
      name = "video.service.justice.gov.uk."
      type = "NS"
      ttl = 172800
      
      records = [
        "ns-52.awsdns-06.com.", 
        "ns-936.awsdns-53.net.", 
        "ns-1867.awsdns-41.co.uk.", 
        "ns-1464.awsdns-55.org."
      ]
    }, 
    {
      name = "video.service.justice.gov.uk."
      type = "SOA"
      ttl = 900
      
      records = [
        "ns-52.awsdns-06.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "playback.video.service.justice.gov.uk."
      type = "A"
      failover_routing_policy = {
        type = "PRIMARY"
      }
      set_identifier = "playback-Primary"
      health_check_id = "09a1e2a7-8c34-410f-a3cf-a355bc0d069c"
      ttl = 60
      
      records = [
        "217.135.104.158"
      ]
    }, 
    {
      name = "playback.video.service.justice.gov.uk."
      type = "A"
      failover_routing_policy = {
        type = "SECONDARY"
      }
      set_identifier = "playback-Secondary"
      ttl = 60
      
      records = [
        "213.216.136.30"
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.playback.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.www.playback.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "playback1.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.playback1.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "playback2.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.playback2.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "playback3.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.playback3.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "playback4.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.playback4.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "playback5.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.playback5.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "playback6.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "playback.video.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_ad6f5bac936f7983cdac02c521925772.playback6.video.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "F21718B83CE0AAED10D97B6512A29853.9CEBAAE94700AB2953EB0390D18B8CDD.9ab71d7cd706e7b5ae6f.sectigo.com."
      ]
    }, 
    {
      name = "sip.video.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.142"
      ]
    }, 
    {
      name = "vap-pexconf004.video.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.142"
      ]
    }, 
    {
      name = "vap-pexrpturn002.video.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.150"
      ]
    }, 
    {
      name = "webrtc.video.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.150"
      ]
    }
  ]
}