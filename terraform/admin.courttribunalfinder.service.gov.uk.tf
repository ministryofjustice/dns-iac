module "admin_courttribunalfinder_service_gov_uk" {
  source = "./modules/route53"

  domain      = "admin.courttribunalfinder.service.gov.uk"
  description = ""

  records = [
    {
      name = "admin.courttribunalfinder.service.gov.uk."     
      type = "NS"  
      ttl  = 172800
      records = [
        "ns-790.awsdns-34.net.",    
        "ns-225.awsdns-28.com.",
        "ns-1601.awsdns-08.co.uk.",    
        "ns-1415.awsdns-48.org."
      ]
    },
    {
      name = "_dmarc.admin.courttribunalfinder.service.gov.uk."
      type = "TXT"
      ttl  = 7200
      records = [
        "v=DMARC1; p=none; rua=mailto:yl0zvgmk@ag.dmarcian.com; ruf=mailto:yl0zvgmk@fr.dmarcian.com;"
      ]
    },
    {
      name = "d1ca871e86e439faf6aea60e908f1b26.admin.courttribunalfinder.service.gov.uk."
      type = "CNAME"
      ttl  = 10800
      records = [
        "EF3C36152DB8BD7CB79A7B5468BC8131213A66B7.comodoca.com."
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
