module "service_justice_gov_uk_zone" {
  source = "./modules/route53/zone"
  name = "service.justice.gov.uk."
  
  
  tags = {
    "component" = "None"
  }
}

module "service_justice_gov_uk_records" {
  source = "./modules/route53/records"
  zone_id = module.service_justice_gov_uk_zone.zone_id
  
  records = [
    {
      name = "service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "Z1BKCTXD74EZPE"
        name = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "service.justice.gov.uk."
      type = "MX"
      ttl = 1800
      
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    }, 
    {
      name = "service.justice.gov.uk."
      type = "NS"
      ttl = 86400
      
      records = [
        "ns-1389.awsdns-45.org.", 
        "ns-978.awsdns-58.net.", 
        "ns-1621.awsdns-10.co.uk.", 
        "ns-187.awsdns-23.com."
      ]
    }, 
    {
      name = "service.justice.gov.uk."
      type = "SOA"
      ttl = 300
      
      records = [
        "ns-1389.awsdns-45.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    }, 
    {
      name = "service.justice.gov.uk."
      type = "SPF"
      ttl = 600
      
      records = [
        "v=spf1 -all"
      ]
    }, 
    {
      name = "service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=spf1 ~all", 
        "MS=ms96686635"
      ]
    }, 
    {
      name = "_acme-challenge.service.justice.gov.uk."
      type = "TXT"
      ttl = 60
      
      records = [
        "-IL71TL-cbvkAym1UdVEBnNHNA6liqEpklQzC-ECAXk"
      ]
    }, 
    {
      name = "_amazonses.service.justice.gov.uk."
      type = "TXT"
      ttl = 1800
      
      records = [
        "kkjhEp32ohHTaRqLf4j/uQ1jyCZc6/ptXyW2zBfFmhs="
      ]
    }, 
    {
      name = "_dmarc.service.justice.gov.uk."
      type = "TXT"
      ttl = 3600
      
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@digitaljustice.gov.uk;"
      ]
    }, 
    {
      name = "pqzo3wwgkdgsl3s5fmad52yftinv4hvm._domainkey.service.justice.gov.uk."
      type = "CNAME"
      ttl = 1800
      
      records = [
        "pqzo3wwgkdgsl3s5fmad52yftinv4hvm.dkim.amazonses.com"
      ]
    }, 
    {
      name = "suaehjnchl4x3uc37ltzv4sjvox32tsg._domainkey.service.justice.gov.uk."
      type = "CNAME"
      ttl = 1800
      
      records = [
        "suaehjnchl4x3uc37ltzv4sjvox32tsg.dkim.amazonses.com"
      ]
    }, 
    {
      name = "szoj7fx3wpkvnzuanwtrpqiva5ov4bca._domainkey.service.justice.gov.uk."
      type = "CNAME"
      ttl = 1800
      
      records = [
        "szoj7fx3wpkvnzuanwtrpqiva5ov4bca.dkim.amazonses.com"
      ]
    }, 
    {
      name = "_smtp._tls.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    }, 
    {
      name = "advance-into-justice.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d2zug2r9gue1ql.cloudfront.net."
      ]
    }, 
    {
      name = "_95ea75a7f508104bbae8244e26130e7e.advance-into-justice.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_7bd56adf412cd4bc93a83eeb6d808f81.ylqxxscwpq.acm-validations.aws"
      ]
    }, 
    {
      name = "www.advance-into-justice.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d2zug2r9gue1ql.cloudfront.net."
      ]
    }, 
    {
      name = "analytical-evidence-library.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-10.awsdns-01.com.", 
        "ns-574.awsdns-07.net.", 
        "ns-1984.awsdns-56.co.uk.", 
        "ns-1445.awsdns-52.org."
      ]
    }, 
    {
      name = "analytical-platform.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1509.awsdns-60.org.", 
        "ns-1903.awsdns-45.co.uk.", 
        "ns-378.awsdns-47.com.", 
        "ns-569.awsdns-07.net."
      ]
    }, 
    {
      name = "management.analytical-platform.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1541.awsdns-00.co.uk.", 
        "ns-602.awsdns-11.net.", 
        "ns-1266.awsdns-30.org.", 
        "ns-228.awsdns-28.com."
      ]
    }, 
    {
      name = "analytical_platform.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "analytical-platform.service.justice.gov.uk."
      ]
    }, 
    {
      name = "analyticalplatform.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "analytical-platform.service.justice.gov.uk."
      ]
    }, 
    {
      name = "ap.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "analytical-platform.service.justice.gov.uk."
      ]
    }, 
    {
      name = "apply-for-criminal-legal-aid.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1004.awsdns-61.net.", 
        "ns-1461.awsdns-54.org.", 
        "ns-1693.awsdns-19.co.uk.", 
        "ns-291.awsdns-36.com."
      ]
    }, 
    {
      name = "apply-for-legal-aid.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-774.awsdns-32.net.", 
        "ns-58.awsdns-07.com.", 
        "ns-1988.awsdns-56.co.uk.", 
        "ns-1201.awsdns-22.org."
      ]
    }, 
    {
      name = "apply-to-court-about-child-arrangements.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-22.awsdns-02.com.", 
        "ns-1667.awsdns-16.co.uk.", 
        "ns-725.awsdns-26.net.", 
        "ns-1475.awsdns-56.org."
      ]
    }, 
    {
      name = "apply-to-court-about-child-arrangements.service.justice.gov.uk."
      type = "TXT"
      ttl = 60
      
      records = [
        "molecular-toad-kokt7cvogddhzdjurci2t668.herokudns.com"
      ]
    }, 
    {
      name = "assure-hmrc-data.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1092.awsdns-08.org.", 
        "ns-1563.awsdns-03.co.uk.", 
        "ns-358.awsdns-44.com.", 
        "ns-668.awsdns-19.net."
      ]
    }, 
    {
      name = "auth.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1.auth.service.justice.gov.uk", 
        "ns2.auth.service.justice.gov.uk"
      ]
    }, 
    {
      name = "ns1.auth.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "52.50.135.114"
      ]
    }, 
    {
      name = "ns2.auth.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "52.50.135.114"
      ]
    }, 
    {
      name = "bichard7.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1421.awsdns-49.org", 
        "ns-1665.awsdns-16.co.uk", 
        "ns-178.awsdns-22.com", 
        "ns-621.awsdns-13.net"
      ]
    }, 
    {
      name = "preprod.bichard7.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1185.awsdns-20.org", 
        "ns-134.awsdns-16.com", 
        "ns-1730.awsdns-24.co.uk", 
        "ns-966.awsdns-56.net"
      ]
    }, 
    {
      name = "bookasecuremove.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-664.awsdns-19.net.", 
        "ns-1036.awsdns-01.org.", 
        "ns-1695.awsdns-19.co.uk.", 
        "ns-42.awsdns-05.com."
      ]
    }, 
    {
      name = "c100.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1553.awsdns-02.co.uk.", 
        "ns-656.awsdns-18.net.", 
        "ns-374.awsdns-46.com.", 
        "ns-1078.awsdns-06.org."
      ]
    }, 
    {
      name = "_acme-challenge.c100formsurvey-staging.service.justice.gov.uk."
      type = "TXT"
      ttl = 60
      
      records = [
        "h3EfKuixfZMRj30lClIYS1M7Xivu2Ccp06WwgwiTgik"
      ]
    }, 
    {
      name = "cafm.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-07.azure-dns.com.", 
        "ns2-07.azure-dns.net.", 
        "ns3-07.azure-dns.org.", 
        "ns4-07.azure-dns.info."
      ]
    }, 
    {
      name = "ccms-ebs.service.justice.gov.uk."
      type = "NS"
      ttl = 3600
      
      records = [
        "ns-22.awsdns-02.com.", 
        "ns-1743.awsdns-25.co.uk.", 
        "ns-760.awsdns-31.net.", 
        "ns-1516.awsdns-61.org."
      ]
    }, 
    {
      name = "check-clients-details-using-hmrc-data.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-753.awsdns-30.net", 
        "ns-1796.awsdns-32.co.uk", 
        "ns-1167.awsdns-17.org", 
        "ns-429.awsdns-53.com"
      ]
    }, 
    {
      name = "check-when-to-disclose-caution-conviction.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1259.awsdns-29.org.", 
        "ns-1913.awsdns-47.co.uk.", 
        "ns-698.awsdns-23.net.", 
        "ns-1.awsdns-00.com."
      ]
    }, 
    {
      name = "checkmydiary.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-81.awsdns-10.com.", 
        "ns-695.awsdns-22.net.", 
        "ns-1278.awsdns-31.org.", 
        "ns-2009.awsdns-59.co.uk."
      ]
    }, 
    {
      name = "claim-criminal-injuries-compensation.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-116.awsdns-14.com.", 
        "ns-1394.awsdns-46.org.", 
        "ns-681.awsdns-21.net.", 
        "ns-1636.awsdns-12.co.uk."
      ]
    }, 
    {
      name = "claim-crown-court-defence.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-775.awsdns-32.net.", 
        "ns-154.awsdns-19.com.", 
        "ns-1818.awsdns-35.co.uk.", 
        "ns-1442.awsdns-52.org."
      ]
    }, 
    {
      name = "cloud-platform.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1702.awsdns-20.co.uk", 
        "ns-174.awsdns-21.com", 
        "ns-870.awsdns-44.net", 
        "ns-1213.awsdns-23.org"
      ]
    }, 
    {
      name = "_38914c2fe17df3d640a7d1d9765d8c88.training-preproduction.co-financing.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_52106b9eec58031689a9b3d42d21d129.mqzgcdqkwq.acm-validations.aws."
      ]
    }, 
    {
      name = "contact-moj.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-877.awsdns-45.net.", 
        "ns-1699.awsdns-20.co.uk.", 
        "ns-13.awsdns-01.com.", 
        "ns-1364.awsdns-42.org."
      ]
    }, 
    {
      name = "court-data-adaptor.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1147.awsdns-15.org.", 
        "ns-377.awsdns-47.com.", 
        "ns-888.awsdns-47.net.", 
        "ns-1859.awsdns-40.co.uk."
      ]
    }, 
    {
      name = "court-data-api.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-135.awsdns-16.com", 
        "ns-1496.awsdns-59.org", 
        "ns-1672.awsdns-17.co.uk", 
        "ns-596.awsdns-10.net"
      ]
    }, 
    {
      name = "court-transcription.service.justice.gov.uk."
      type = "MX"
      ttl = 300
      
      records = [
        "10 cluster5.eu.messagelabs.com", 
        "20 cluster5a.eu.messagelabs.com"
      ]
    }, 
    {
      name = "court-transcription.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=spf1 include:spf.messagelabs.com -all", 
        "C0E4N61551"
      ]
    }, 
    {
      name = "courttran._domainkey.court-transcription.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=DKIM1; k=rsa; t=s; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7MhZQPsxhhTHvp49pndvqDRS2QftpqaRSIcI9qnES6ekEi0Zssh7yLudCBNxzgeSYVmFQxELbXLq7G8pjUAiAO8xu+S5PD2x2sIozb1kJwwCjnXnsb/s4LKaCl0Lw\"\"GU7APT7XZeo7f5mcXl8SQKem5WXrWuF3bi8gJxt3mhuJeQ9EzLPfIgirm8dcgI0nRkvKdcJLRELToOBp1S3VWTpxisaPOvmFjHNiHZBtshcj0INYNDU4VgRS4d0JzTQ/2qnpP25j85H0DO8yHuTxA4IGV2R4LZ63YZNedovfm3sgtEkK1VDh8wnHE1R2mH1WKhSwH0w/MXh0Ryb/HqfPxkO7wIDAQAB"
      ]
    }, 
    {
      name = "courttrans._domainkey.court-transcription.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=DKIM1; k=rsa; t=s; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtY2c1cgFCefu74UupXeaNc+LZxBPUn6DTNU0ZzurvIy/YOtVdjMO7JLA6HkmlS5XDVCENytyp+jUbDbbtWibw28fw8g4vODbe59IOzCX/HtWEJdIrwBWpCXm6gafQOWpjW1x7ktGVNsIj7k/EpTCcW0pBtYhnfwh06MI0643clxhKjOV8IZUvzVZ4p\"\"ZOC/1uVsmQdIi/vDpWT6WYTY7/A1cAkfUlsXUgNSoBtGPZG4wH3HsUtq/HlNriQCmGVf3nqPzz4hoc3VeYi6fp89kBrIYWfmb11oCNWB2U9Ne5QtaB8NodY50oFhz5DVR29pXHjfKUEbYXVQaU5yYMUBYmoQIDAQAB"
      ]
    }, 
    {
      name = "court-tribunal-records-archive.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-04.azure-dns.com", 
        "ns2-04.azure-dns.net", 
        "ns3-04.azure-dns.org", 
        "ns4-04.azure-dns.info"
      ]
    }, 
    {
      name = "courts-video-link.service.justice.gov.uk."
      type = "A"
      multivalue_answer_routing_policy = true
      set_identifier = "Primary"
      health_check_id = "f4be32ef-2998-4422-a00e-3ccda34fa76f"
      ttl = 300
      
      records = [
        "213.216.136.71"
      ]
    }, 
    {
      name = "courts-video-link.service.justice.gov.uk."
      type = "A"
      multivalue_answer_routing_policy = true
      set_identifier = "Secondary"
      health_check_id = "5f0ddaf6-49b1-4128-a624-c87471374522"
      ttl = 300
      
      records = [
        "217.135.104.201"
      ]
    }, 
    {
      name = "courts-video-link.service.justice.gov.uk."
      type = "A"
      multivalue_answer_routing_policy = true
      set_identifier = "courts-video-link-quarternary"
      health_check_id = "04384308-d29b-42e6-b95a-534c5a9cb512"
      ttl = 300
      
      records = [
        "217.135.104.202"
      ]
    }, 
    {
      name = "courts-video-link.service.justice.gov.uk."
      type = "A"
      multivalue_answer_routing_policy = true
      set_identifier = "courts-video-link-tertiary"
      health_check_id = "389e8db2-1bc9-42cf-bdb4-1a4cf9237ae3"
      ttl = 300
      
      records = [
        "213.216.136.72"
      ]
    }, 
    {
      name = "_h323cs._tcp.courts-video-link.service.justice.gov.uk."
      type = "SRV"
      ttl = 300
      
      records = [
        "10 10 1720 pxpxy001-dc01.courts-video-link.service.justice.gov.uk", 
        "10 10 1720 pxpxy002-dc02.courts-video-link.service.justice.gov.uk", 
        "20 10 1720 pxpxy003-dc01.courts-video-link.service.justice.gov.uk", 
        "20 10 1720 pxpxy004-dc02.courts-video-link.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_pexapp._tcp.courts-video-link.service.justice.gov.uk."
      type = "SRV"
      ttl = 300
      
      records = [
        "10 10 443 pxpxy001-dc01.courts-video-link.service.justice.gov.uk", 
        "10 10 443 pxpxy002-dc02.courts-video-link.service.justice.gov.uk", 
        "20 10 443 pxpxy003-dc01.courts-video-link.service.justice.gov.uk", 
        "20 10 443 pxpxy004-dc02.courts-video-link.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_sip._tcp.courts-video-link.service.justice.gov.uk."
      type = "SRV"
      ttl = 300
      
      records = [
        "10 10 5060 pxpxy001-dc01.courts-video-link.service.justice.gov.uk", 
        "10 10 5060 pxpxy002-dc02.courts-video-link.service.justice.gov.uk", 
        "20 10 5060 pxpxy003-dc01.courts-video-link.service.justice.gov.uk", 
        "20 10 5060 pxpxy004-dc02.courts-video-link.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_sipfederationtls._tcp.courts-video-link.service.justice.gov.uk."
      type = "SRV"
      ttl = 300
      
      records = [
        "10 10 5061 pxpxy001-dc01.courts-video-link.service.justice.gov.uk", 
        "10 10 5061 pxpxy002-dc02.courts-video-link.service.justice.gov.uk", 
        "20 10 5061 pxpxy003-dc01.courts-video-link.service.justice.gov.uk", 
        "20 10 5061 pxpxy004-dc02.courts-video-link.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_sips._tcp.courts-video-link.service.justice.gov.uk."
      type = "SRV"
      ttl = 300
      
      records = [
        "10 10 5061 pxpxy001-dc01.courts-video-link.service.justice.gov.uk", 
        "10 10 5061 pxpxy002-dc02.courts-video-link.service.justice.gov.uk", 
        "20 10 5061 pxpxy003-dc01.courts-video-link.service.justice.gov.uk", 
        "20 10 5061 pxpxy004-dc02.courts-video-link.service.justice.gov.uk"
      ]
    }, 
    {
      name = "_h323ls._udp.courts-video-link.service.justice.gov.uk."
      type = "SRV"
      ttl = 300
      
      records = [
        "10 10 1719 pxpxy001-dc01.courts-video-link.service.justice.gov.uk", 
        "10 10 1719 pxpxy002-dc02.courts-video-link.service.justice.gov.uk", 
        "20 10 1719 pxpxy003-dc01.courts-video-link.service.justice.gov.uk", 
        "20 10 1719 pxpxy004-dc02.courts-video-link.service.justice.gov.uk"
      ]
    }, 
    {
      name = "pxpxy001-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "213.216.136.71"
      ]
    }, 
    {
      name = "pxpxy002-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.201"
      ]
    }, 
    {
      name = "pxpxy003-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "213.216.136.72"
      ]
    }, 
    {
      name = "pxpxy004-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.202"
      ]
    }, 
    {
      name = "pxpxy005-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "213.216.136.73"
      ]
    }, 
    {
      name = "pxpxy006-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.203"
      ]
    }, 
    {
      name = "pxpxy007-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "213.216.136.74"
      ]
    }, 
    {
      name = "pxpxy008-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.204"
      ]
    }, 
    {
      name = "pxpxy009-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "213.216.136.75"
      ]
    }, 
    {
      name = "pxpxy010-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.205"
      ]
    }, 
    {
      name = "pxpxy011-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "213.216.136.76"
      ]
    }, 
    {
      name = "pxpxy012-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.206"
      ]
    }, 
    {
      name = "pxpxy013-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "213.216.136.77"
      ]
    }, 
    {
      name = "pxpxy014-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "217.135.104.207"
      ]
    }, 
    {
      name = "crime-portal-mirror-gateway-probation.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-1147.awsdns-15.org.", 
        "ns-270.awsdns-33.com.", 
        "ns-1540.awsdns-00.co.uk.", 
        "ns-678.awsdns-20.net."
      ]
    }, 
    {
      name = "crime-portal-mirror-gateway.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-869.awsdns-44.net.", 
        "ns-324.awsdns-40.com.", 
        "ns-1484.awsdns-57.org.", 
        "ns-1614.awsdns-09.co.uk."
      ]
    }, 
    {
      name = "crime-reference-data-api.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "ffc33a8e-6ac2-4e92-996e-a7f9e12bd1cf.cloudapp.net"
      ]
    }, 
    {
      name = "crown-court-litigator-fees.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d2cadkxrqxugqy.cloudfront.net"
      ]
    }, 
    {
      name = "_c465a81d426f9c23ea655e52085f8d4a.crown-court-litigator-fees.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_8e59943746d54df0be7c6083636ffffb.vrcmzfbvtx.acm-validations.aws."
      ]
    }, 
    {
      name = "development.crown-court-litigator-fees.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d1ghxikls9yc1b.cloudfront.net"
      ]
    }, 
    {
      name = "staging.crown-court-litigator-fees.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "dcaq9asjr3g28.cloudfront.net"
      ]
    }, 
    {
      name = "test.crown-court-litigator-fees.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "dh6bfqpemx4av.cloudfront.net"
      ]
    }, 
    {
      name = "uat.crown-court-litigator-fees.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d1qziauwetehis.cloudfront.net"
      ]
    }, 
    {
      name = "crown-court-remuneration.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d3oqg3yrw3yc9x.cloudfront.net"
      ]
    }, 
    {
      name = "_cd274e7ee824297d08388d398a2b2b8a.crown-court-remuneration.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_b2d6197bf0aa1d024b5fef68a13127bb.fpwkmzyskh.acm-validations.aws."
      ]
    }, 
    {
      name = "development.crown-court-remuneration.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d2un84u5xlacrf.cloudfront.net"
      ]
    }, 
    {
      name = "staging.crown-court-remuneration.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d9ejn5yx5y6y8.cloudfront.net"
      ]
    }, 
    {
      name = "test.crown-court-remuneration.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d11b6vfzzycae4.cloudfront.net"
      ]
    }, 
    {
      name = "uat.crown-court-remuneration.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d3gnf84r7r46aa.cloudfront.net"
      ]
    }, 
    {
      name = "csr.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-03.azure-dns.com.", 
        "ns2-03.azure-dns.net.", 
        "ns3-03.azure-dns.org.", 
        "ns4-03.azure-dns.info."
      ]
    }, 
    {
      name = "darts.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-04.azure-dns.com.", 
        "ns2-04.azure-dns.net.", 
        "ns3-04.azure-dns.org.", 
        "ns4-04.azure-dns.info."
      ]
    }, 
    {
      name = "data-platform.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1494.awsdns-58.org.", 
        "ns-196.awsdns-24.com.", 
        "ns-957.awsdns-55.net.", 
        "ns-1584.awsdns-06.co.uk."
      ]
    }, 
    {
      name = "design-patterns.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "digitalprisons.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-09.azure-dns.com", 
        "ns2-09.azure-dns.net", 
        "ns3-09.azure-dns.org", 
        "ns4-09.azure-dns.info"
      ]
    }, 
    {
      name = "divorce-section-search.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-603.awsdns-11.net", 
        "ns-2014.awsdns-59.co.uk", 
        "ns-315.awsdns-39.com", 
        "ns-1141.awsdns-14.org"
      ]
    }, 
    {
      name = "electronic-monitoring.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-521.awsdns-01.net.", 
        "ns-1969.awsdns-54.co.uk.", 
        "ns-1046.awsdns-02.org.", 
        "ns-447.awsdns-55.com."
      ]
    }, 
    {
      name = "email.email.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "mailgun.org"
      ]
    }, 
    {
      name = "equip.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1877.awsdns-42.co.uk", 
        "ns-329.awsdns-41.com", 
        "ns-1256.awsdns-29.org", 
        "ns-845.awsdns-41.net"
      ]
    }, 
    {
      name = "exchange-integration-services-stream.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "exiss.q-solution.net"
      ]
    }, 
    {
      name = "preprod.exchange-integration-services-stream.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "exisspp.q-solution.net"
      ]
    }, 
    {
      name = "familymediators.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-1462.awsdns-54.org.", 
        "ns-1813.awsdns-34.co.uk.", 
        "ns-500.awsdns-62.com.", 
        "ns-912.awsdns-50.net."
      ]
    }, 
    {
      name = "find-unclaimed-court-money.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "ZHURV8PSTC4K8"
        name = "dualstack.ubi-p-loadb-1rk7d55h8z4t3-1469044134.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = true
      }
    }, 
    {
      name = "find-unclaimed-court-money.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1085.awsdns-07.org.", 
        "ns-1740.awsdns-25.co.uk.", 
        "ns-973.awsdns-57.net.", 
        "ns-237.awsdns-29.com."
      ]
    }, 
    {
      name = "_39556719e8d565ea45417d38b40889c7.find-unclaimed-court-money.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "_06c52dec40633865541b0ff381d9eeb1.chvvfdvqrj.acm-validations.aws"
      ]
    }, 
    {
      name = "_6f2592c897ce1cb57321ce86823bba01.www.find-unclaimed-court-money.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_b889b9713a37c39694f437333e017428.chvvfdvqrj.acm-validations.aws."
      ]
    }, 
    {
      name = "form.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-999.awsdns-60.net.", 
        "ns-1694.awsdns-19.co.uk.", 
        "ns-1436.awsdns-51.org.", 
        "ns-322.awsdns-40.com."
      ]
    }, 
    {
      name = "gender-recognition.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1155.awsdns-16.org.", 
        "ns-1726.awsdns-23.co.uk.", 
        "ns-755.awsdns-30.net.", 
        "ns-371.awsdns-46.com."
      ]
    }, 
    {
      name = "haletest1.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1923.awsdns-48.co.uk.", 
        "ns-1156.awsdns-16.org.", 
        "ns-748.awsdns-29.net.", 
        "ns-64.awsdns-08.com."
      ]
    }, 
    {
      name = "helpwithchildarrangements.service.justice.gov.uk."
      type = "NS"
      ttl = 100
      
      records = [
        "ns-1099.awsdns-09.org.", 
        "ns-465.awsdns-58.com.", 
        "ns-989.awsdns-59.net.", 
        "ns-2000.awsdns-58.co.uk."
      ]
    }, 
    {
      name = "hmcts-risk-assurance-operating-controls.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1306.awsdns-35.org.", 
        "ns-456.awsdns-57.com.", 
        "ns-838.awsdns-40.net.", 
        "ns-1537.awsdns-00.co.uk."
      ]
    }, 
    {
      name = "_f1d407a6cf4f3710e0f45c21cfc6558a.hmctsknowledgemanagement.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_1629a8735ac3c49c7b5103d8d7459027.tljzshvwok.acm-validations.aws"
      ]
    }, 
    {
      name = "hmpps-architecture-blueprint.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "hmpps-assessments.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-931.awsdns-52.net.", 
        "ns-1777.awsdns-30.co.uk.", 
        "ns-1459.awsdns-54.org.", 
        "ns-450.awsdns-56.com."
      ]
    }, 
    {
      name = "hmpps-performance-hub.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "performance-hub.hmpps-production.modernisation-platform.service.justice.gov.uk"
      ]
    }, 
    {
      name = "staging.hmpps-performance-hub.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "performance-hub.hmpps-preproduction.modernisation-platform.service.justice.gov.uk"
      ]
    }, 
    {
      name = "hmpps.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1048.awsdns-03.org.", 
        "ns-384.awsdns-48.com.", 
        "ns-1972.awsdns-54.co.uk.", 
        "ns-585.awsdns-09.net."
      ]
    }, 
    {
      name = "hmppsinsights.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "35.214.43.34"
      ]
    }, 
    {
      name = "www.hmppsinsights.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "hmppsinsights.service.justice.gov.uk"
      ]
    }, 
    {
      name = "integrationtest.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-1259.awsdns-29.org.", 
        "ns-843.awsdns-41.net.", 
        "ns-1760.awsdns-28.co.uk.", 
        "ns-213.awsdns-26.com."
      ]
    }, 
    {
      name = "_0cbf0f810ad5c633d700bb504ca45b1f.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_d54a4c592ad02000b032201b8e535d4b.btsqtkxpyp.acm-validations.aws."
      ]
    }, 
    {
      name = "ftp-hmcts.intranet.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "54.72.29.113"
      ]
    }, 
    {
      name = "hmcts.intranet.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "54.72.29.113"
      ]
    }, 
    {
      name = "jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "jacintranet.prod.wp.dsd.io"
      ]
    }, 
    {
      name = "s1._domainkey.jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "s1.domainkey.u2320754.wl005.sendgrid.net"
      ]
    }, 
    {
      name = "s2._domainkey.jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "s2.domainkey.u2320754.wl005.sendgrid.net"
      ]
    }, 
    {
      name = "em1424.jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "u2320754.wl005.sendgrid.net"
      ]
    }, 
    {
      name = "judicialappointmentscommission.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "jac.intranet.service.justice.gov.uk"
      ]
    }, 
    {
      name = "judicialoffice.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "jointranet.prod.wp.dsd.io"
      ]
    }, 
    {
      name = "lawcommission.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "lawcomintranet.prod.wp.dsd.io"
      ]
    }, 
    {
      name = "legalaidagency.intranet.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "134.213.160.26"
      ]
    }, 
    {
      name = "officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "osptintranet.prod.wp.dsd.io"
      ]
    }, 
    {
      name = "s1._domainkey.officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "s1.domainkey.u2320754.wl005.sendgrid.net"
      ]
    }, 
    {
      name = "s2._domainkey.officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "s2.domainkey.u2320754.wl005.sendgrid.net"
      ]
    }, 
    {
      name = "em1689.officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "u2320754.wl005.sendgrid.net"
      ]
    }, 
    {
      name = "jacksapp-devs.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-848.awsdns-42.net.", 
        "ns-455.awsdns-56.com.", 
        "ns-1481.awsdns-57.org.", 
        "ns-1721.awsdns-23.co.uk."
      ]
    }, 
    {
      name = "jury.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "jury-prototype.herokuapp.com"
      ]
    }, 
    {
      name = "laa-crime.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "OSSRH-90962"
      ]
    }, 
    {
      name = "laa-fee-calculator.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-877.awsdns-45.net.", 
        "ns-324.awsdns-40.com.", 
        "ns-1399.awsdns-46.org.", 
        "ns-1537.awsdns-00.co.uk."
      ]
    }, 
    {
      name = "laa-finance-data.service.justice.gov.uk."
      type = "NS"
      ttl = 86400
      
      records = [
        "ns-1932.awsdns-49.co.uk.", 
        "ns-1248.awsdns-28.org.", 
        "ns-834.awsdns-40.net.", 
        "ns-403.awsdns-50.com."
      ]
    }, 
    {
      name = "user-guide.laa-operations.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "laa-status-dashboard.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-925.awsdns-51.net.", 
        "ns-209.awsdns-26.com.", 
        "ns-1144.awsdns-15.org.", 
        "ns-1723.awsdns-23.co.uk."
      ]
    }, 
    {
      name = "list-assist.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "51.132.40.131"
      ]
    }, 
    {
      name = "sandbox.list-assist.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "51.132.208.237"
      ]
    }, 
    {
      name = "sit.list-assist.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "51.104.255.139"
      ]
    }, 
    {
      name = "trg.list-assist.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "20.49.168.240"
      ]
    }, 
    {
      name = "uat.list-assist.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "20.49.165.220"
      ]
    }, 
    {
      name = "maat-libra-administration-tool.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1937.awsdns-50.co.uk.", 
        "ns-193.awsdns-24.com.", 
        "ns-1321.awsdns-37.org.", 
        "ns-976.awsdns-58.net."
      ]
    }, 
    {
      name = "manage-external-funded-offender-provision.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "Z2FDTNDATAQYW2"
        name = "d2p66dhqonjkjj.cloudfront.net."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_e423c56d23dc0dce73d7af3276cfd0e6.manage-external-funded-offender-provision.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_e74deb9ca8229527592f88459265f1ef.kirrbxfjtw.acm-validations.aws."
      ]
    }, 
    {
      name = "training-preproduction.manage-external-funded-offender-provision.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "Z2FDTNDATAQYW2"
        name = "d3vok0bwimv2ce.cloudfront.net."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_daab53fad660d45c0e18965db75d500e.training-preproduction.manage-external-funded-offender-provision.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_30521c4f03ed551be23f0ee2011c9ab0.vrztfgqhxj.acm-validations.aws."
      ]
    }, 
    {
      name = "manage-key-workers.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-1028.awsdns-00.org.", 
        "ns-1932.awsdns-49.co.uk.", 
        "ns-62.awsdns-07.com.", 
        "ns-887.awsdns-46.net."
      ]
    }, 
    {
      name = "mercury.service.justice.gov.uk."
      type = "NS"
      ttl = 3600
      
      records = [
        "ns1-01.azure-dns.com.", 
        "ns2-01.azure-dns.net.", 
        "ns3-01.azure-dns.org.", 
        "ns4-01.azure-dns.info."
      ]
    }, 
    {
      name = "ministry-of-justice-acronyms.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "mod-platform-monitoring.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-136.awsdns-17.com.", 
        "ns-1837.awsdns-37.co.uk.", 
        "ns-647.awsdns-16.net.", 
        "ns-1099.awsdns-09.org."
      ]
    }, 
    {
      name = "modernisation-platform.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1520.awsdns-62.org", 
        "ns-1755.awsdns-27.co.uk", 
        "ns-229.awsdns-28.com", 
        "ns-561.awsdns-06.net"
      ]
    }, 
    {
      name = "moic.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1316.awsdns-36.org.", 
        "ns-1833.awsdns-37.co.uk.", 
        "ns-882.awsdns-46.net.", 
        "ns-188.awsdns-23.com."
      ]
    }, 
    {
      name = "moj-forms-editor.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-712.awsdns-25.net.", 
        "ns-1824.awsdns-36.co.uk.", 
        "ns-1437.awsdns-51.org.", 
        "ns-228.awsdns-28.com."
      ]
    }, 
    {
      name = "moj-forms.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1277.awsdns-31.org.", 
        "ns-279.awsdns-34.com.", 
        "ns-820.awsdns-38.net.", 
        "ns-1823.awsdns-35.co.uk."
      ]
    }, 
    {
      name = "moj-online.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-782.awsdns-33.net.", 
        "ns-1769.awsdns-29.co.uk.", 
        "ns-1409.awsdns-48.org.", 
        "ns-133.awsdns-16.com."
      ]
    }, 
    {
      name = "_fedbba35e8d7e78d6844f69ca4c3ec12.national-start-on-first-deployment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_bd1482675a747ec82c7ba756a5391a54.ylqxxscwpq.acm-validations.aws"
      ]
    }, 
    {
      name = "network-access-control.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1576.awsdns-05.co.uk.", 
        "ns-1295.awsdns-33.org.", 
        "ns-478.awsdns-59.com.", 
        "ns-866.awsdns-44.net."
      ]
    }, 
    {
      name = "dev.network-access-control.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1990.awsdns-56.co.uk.", 
        "ns-4.awsdns-00.com.", 
        "ns-1381.awsdns-44.org.", 
        "ns-650.awsdns-17.net."
      ]
    }, 
    {
      name = "prep.network-access-control.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-761.awsdns-31.net.", 
        "ns-1323.awsdns-37.org.", 
        "ns-2012.awsdns-59.co.uk.", 
        "ns-481.awsdns-60.com."
      ]
    }, 
    {
      name = "neutral-citation-allocation.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1119.awsdns-11.org.", 
        "ns-542.awsdns-03.net.", 
        "ns-446.awsdns-55.com.", 
        "ns-1552.awsdns-02.co.uk."
      ]
    }, 
    {
      name = "dart.nle.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "hmcts-nle.azurefd.net"
      ]
    }, 
    {
      name = "darts.nle.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-03.azure-dns.com.", 
        "ns2-03.azure-dns.net.", 
        "ns3-03.azure-dns.org.", 
        "ns4-03.azure-dns.info."
      ]
    }, 
    {
      name = "nomis-api.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-01.azure-dns.com.", 
        "ns2-01.azure-dns.net.", 
        "ns3-01.azure-dns.org.", 
        "ns4-01.azure-dns.info."
      ]
    }, 
    {
      name = "nomis.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-05.azure-dns.com.", 
        "ns2-05.azure-dns.net.", 
        "ns3-05.azure-dns.org.", 
        "ns4-05.azure-dns.info."
      ]
    }, 
    {
      name = "noms-api.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "Z32O12XQLNTSW2"
        name = "dualstack.nomsapi-prod-apigateway-133650463.eu-west-1.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "oasys-auth.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-953.awsdns-55.net.", 
        "ns-1291.awsdns-33.org.", 
        "ns-1619.awsdns-10.co.uk.", 
        "ns-438.awsdns-54.com."
      ]
    }, 
    {
      name = "oasys.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-04.azure-dns.com.", 
        "ns2-04.azure-dns.net.", 
        "ns3-04.azure-dns.org.", 
        "ns4-04.azure-dns.info."
      ]
    }, 
    {
      name = "offender-case-notes.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1147.awsdns-15.org.", 
        "ns-22.awsdns-02.com.", 
        "ns-780.awsdns-33.net.", 
        "ns-1904.awsdns-46.co.uk."
      ]
    }, 
    {
      name = "offender-categorisation.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1566.awsdns-03.co.uk.", 
        "ns-1205.awsdns-22.org.", 
        "ns-1008.awsdns-62.net.", 
        "ns-416.awsdns-52.com."
      ]
    }, 
    {
      name = "offenders-9bee1354.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "ZHURV8PSTC4K8"
        name = "prisoners-elboffen-tihe091e7s7f-723595351.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "offenders.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "ZHURV8PSTC4K8"
        name = "prisoners-elboffen-tihe091e7s7f-723595351.eu-west-2.elb.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "offloc.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-09.azure-dns.com", 
        "ns3-09.azure-dns.org", 
        "ns2-09.azure-dns.net", 
        "ns4-09.azure-dns.info"
      ]
    }, 
    {
      name = "operations-engineering.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "user-guides.operations-engineering.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "opg.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1224.awsdns-25.org", 
        "ns-1941.awsdns-50.co.uk", 
        "ns-676.awsdns-20.net", 
        "ns-86.awsdns-10.com"
      ]
    }, 
    {
      name = "parental-responsibility-agreement.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1676.awsdns-17.co.uk.", 
        "ns-960.awsdns-56.net.", 
        "ns-477.awsdns-59.com.", 
        "ns-1302.awsdns-34.org."
      ]
    }, 
    {
      name = "pathfinder.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1625.awsdns-11.co.uk.", 
        "ns-855.awsdns-42.net.", 
        "ns-391.awsdns-48.com.", 
        "ns-1442.awsdns-52.org."
      ]
    }, 
    {
      name = "pingdom.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "stats.pingdom.com"
      ]
    }, 
    {
      name = "access.platforms.service.justice.gov.uk."
      type = "NS"
      ttl = 3600
      
      records = [
        "ns-674.awsdns-20.net.", 
        "ns-1192.awsdns-21.org.", 
        "ns-325.awsdns-40.com.", 
        "ns-1636.awsdns-12.co.uk."
      ]
    }, 
    {
      name = "prepare-case-probation.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1171.awsdns-18.org.", 
        "ns-93.awsdns-11.com.", 
        "ns-531.awsdns-02.net.", 
        "ns-1748.awsdns-26.co.uk."
      ]
    }, 
    {
      name = "prison-education-support.service.justice.gov.uk."
      type = "MX"
      ttl = 300
      
      records = [
        "1 ASPMX.L.GOOGLE.COM.", 
        "5 ALT1.ASPMX.L.GOOGLE.COM.", 
        "5 ALT2.ASPMX.L.GOOGLE.COM.", 
        "10 ALT3.ASPMX.L.GOOGLE.COM.", 
        "10 ALT4.ASPMX.L.GOOGLE.COM."
      ]
    }, 
    {
      name = "prison-education-support.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "google-site-verification=8nQHRQ-Z2NxNUcSmlpH-rOZytJpVYqW4g9et7HnojPA"
      ]
    }, 
    {
      name = "prison.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1688.awsdns-19.co.uk.", 
        "ns-203.awsdns-25.com.", 
        "ns-639.awsdns-15.net.", 
        "ns-1401.awsdns-47.org."
      ]
    }, 
    {
      name = "prisoner-intelligence-notifications.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns1-03.azure-dns.com.", 
        "ns2-03.azure-dns.net.", 
        "ns3-03.azure-dns.org.", 
        "ns4-03.azure-dns.info."
      ]
    }, 
    {
      name = "prisoner-money.service.justice.gov.uk."
      type = "NS"
      ttl = 3600
      
      records = [
        "ns-1641.awsdns-13.co.uk.", 
        "ns-1232.awsdns-26.org.", 
        "ns-247.awsdns-30.com.", 
        "ns-717.awsdns-25.net."
      ]
    }, 
    {
      name = "prisoner.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-08.azure-dns.com.", 
        "ns2-08.azure-dns.net.", 
        "ns3-08.azure-dns.org.", 
        "ns4-08.azure-dns.info."
      ]
    }, 
    {
      name = "prisonvisits.service.justice.gov.uk."
      type = "NS"
      ttl = 60
      
      records = [
        "ns-1207.awsdns-22.org.", 
        "ns-676.awsdns-20.net.", 
        "ns-154.awsdns-19.com.", 
        "ns-1992.awsdns-57.co.uk."
      ]
    }, 
    {
      name = "probation-integration.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-781.awsdns-33.net.", 
        "ns-1628.awsdns-11.co.uk.", 
        "ns-1338.awsdns-39.org.", 
        "ns-64.awsdns-08.com."
      ]
    }, 
    {
      name = "probation.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1566.awsdns-03.co.uk.", 
        "ns-849.awsdns-42.net.", 
        "ns-414.awsdns-51.com.", 
        "ns-1366.awsdns-42.org."
      ]
    }, 
    {
      name = "prometheus.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "ZD4D7Y8KGAS4G"
        name = "a298b2a91402d11e9b7fa0abe03ddaa3-97fb50d98e3c6eed.elb.eu-west-2.amazonaws.com."
        evaluate_target_health = false
      }
    }, 
    {
      name = "pvlbookingsystem.service.justice.gov.uk."
      type = "A"
      ttl = 600
      
      records = [
        "51.140.30.40"
      ]
    }, 
    {
      name = "www.pvlbookingsystem.service.justice.gov.uk."
      type = "CNAME"
      ttl = 600
      
      records = [
        "pvlbookingsystem.service.justice.gov.uk."
      ]
    }, 
    {
      name = "pvlbookingsystemtest.service.justice.gov.uk."
      type = "A"
      ttl = 600
      
      records = [
        "51.140.154.247"
      ]
    }, 
    {
      name = "pvlbookingsystemtest.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "7fcq2rv3orelq7se5k09lonlee"
      ]
    }, 
    {
      name = "recruitment.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "104.16.207.86", 
        "104.16.209.86", 
        "104.16.208.86", 
        "104.16.206.86", 
        "104.16.210.86"
      ]
    }, 
    {
      name = "recruitment.service.justice.gov.uk."
      type = "CAA"
      ttl = 300
      
      records = [
        "0 issue \"pki.goog\""
      ]
    }, 
    {
      name = "recruitment.service.justice.gov.uk."
      type = "MX"
      ttl = 300
      
      records = [
        "10 r1-smtp-in-1.dotdigital.com", 
        "10 r1-smtp-in-2.dotdigital.com"
      ]
    }, 
    {
      name = "recruitment.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=spf1 include:spf.dotmailer.com -all"
      ]
    }, 
    {
      name = "_amazonses.recruitment.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "FMIsX4cTH5TyOjbMPzBpbk/CK9ZC6oY2G6Vvu6D1Acw="
      ]
    }, 
    {
      name = "_dmarc.recruitment.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=DMARC1;p=none;rua=mailto:N4rHXmBVPY@dmarc.inboxmonster.com;fo=0;adkim=r;aspf=r;rf=afrf;pct=100;"
      ]
    }, 
    {
      name = "_domainkey.recruitment.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "t=y; o=~;"
      ]
    }, 
    {
      name = "_adsp._domainkey.recruitment.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "dkim=all"
      ]
    }, 
    {
      name = "bm4eh3fe5tzqaedogvql4r27syh3gry5._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "bm4eh3fe5tzqaedogvql4r27syh3gry5.dkim.amazonses.com"
      ]
    }, 
    {
      name = "cid._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "cid.domainkey.u19196707.wl208.sendgrid.net"
      ]
    }, 
    {
      name = "cid2._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "cid2.domainkey.u19196707.wl208.sendgrid.net"
      ]
    }, 
    {
      name = "dkim2048._domainkey.recruitment.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv5CO7Sjd3Nza40/rw4Cf6MuDRQqL65oP2qPsAraK2IW8uE6+GDFq9sC8gmitBqghP5QcsuSjvXGP2h1Lsup+u2U0DLgl+WcyjCU9ITb6npsoS124O/d+Zq0bpSSh3R8pEiEFkPQ19LEZsTo92CdEbq5mly\"\"13goYsCJnx94sbPTTRWs0lZwwgQrDjSxyU998TXYX0zXKR9of8TKWGDlr020TaUa4z4NX4uK2oc5n6GJ1tl7wotfEl/QUM5Ww8MSQHpE8v9x3S+agpPOyHkIGCP6KvTo5722qeTaKUWAgKFq9Ydbm8Lm7VTj431Kz3gRHtyE8vG7dVNpPfgQCH+pQeZQIDAQAB"
      ]
    }, 
    {
      name = "ovzlyraz4oolzol4giy6q5o3svtb234i._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ovzlyraz4oolzol4giy6q5o3svtb234i.dkim.amazonses.com"
      ]
    }, 
    {
      name = "yokjyxwd7trqo3yra5buqzqzx7lx3phg._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "yokjyxwd7trqo3yra5buqzqzx7lx3phg.dkim.amazonses.com"
      ]
    }, 
    {
      name = "cidmail.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "u19196707.wl208.sendgrid.net"
      ]
    }, 
    {
      name = "refer-monitor-intervention.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-423.awsdns-52.com.", 
        "ns-1002.awsdns-61.net.", 
        "ns-1460.awsdns-54.org.", 
        "ns-1824.awsdns-36.co.uk."
      ]
    }, 
    {
      name = "restricted-patients-api.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1522.awsdns-62.org.", 
        "ns-46.awsdns-05.com.", 
        "ns-704.awsdns-24.net.", 
        "ns-1717.awsdns-22.co.uk."
      ]
    }, 
    {
      name = "review-criminal-legal-aid.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-604.awsdns-11.net.", 
        "ns-295.awsdns-36.com.", 
        "ns-1082.awsdns-07.org.", 
        "ns-1936.awsdns-50.co.uk."
      ]
    }, 
    {
      name = "search-information-about-legal-problems.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1843.awsdns-38.co.uk.", 
        "ns-1186.awsdns-20.org.", 
        "ns-796.awsdns-35.net.", 
        "ns-414.awsdns-51.com."
      ]
    }, 
    {
      name = "secops.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1004.awsdns-61.net", 
        "ns-1484.awsdns-57.org", 
        "ns-452.awsdns-56.com", 
        "ns-1879.awsdns-42.co.uk"
      ]
    }, 
    {
      name = "securecodewarrior.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "Z2FDTNDATAQYW2"
        name = "d3j9as4guikn28.cloudfront.net."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_935f4ad292e31cb21e5bf6043b20a2bf.securecodewarrior.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_f65a4f48e9990c0858b5134cdc625b9b.kzhndfqvzk.acm-validations.aws."
      ]
    }, 
    {
      name = "security-guidance.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "security-operations.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1731.awsdns-24.co.uk", 
        "ns-466.awsdns-58.com", 
        "ns-1310.awsdns-35.org", 
        "ns-1018.awsdns-63.net"
      ]
    }, 
    {
      name = "security-training.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "Z2FDTNDATAQYW2"
        name = "d28jr85k43dhb7.cloudfront.net."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_33da21e90254237bcc4d8ad00bd3d118.security-training.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_6165ac1a2a05feaefa1cc4aaf7d09b0b.kgnrpmcdhl.acm-validations.aws."
      ]
    }, 
    {
      name = "securityoperations.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1845.awsdns-38.co.uk", 
        "ns-1031.awsdns-00.org", 
        "ns-402.awsdns-50.com", 
        "ns-965.awsdns-56.net"
      ]
    }, 
    {
      name = "sendmoneytoaprisoner.service.justice.gov.uk."
      type = "NS"
      ttl = 3600
      
      records = [
        "ns-1845.awsdns-38.co.uk.", 
        "ns-1000.awsdns-61.net.", 
        "ns-1418.awsdns-49.org.", 
        "ns-488.awsdns-61.com."
      ]
    }, 
    {
      name = "sentence-planning.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1564.awsdns-03.co.uk.", 
        "ns-700.awsdns-23.net.", 
        "ns-1222.awsdns-24.org.", 
        "ns-197.awsdns-24.com."
      ]
    }, 
    {
      name = "signon.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "signon.service.justice.gov.uk.herokudns.com"
      ]
    }, 
    {
      name = "email.signon.service.justice.gov.uk."
      type = "MX"
      ttl = 300
      
      records = [
        "10 mxa.mailgun.org", 
        "20 mxb.mailgun.org"
      ]
    }, 
    {
      name = "email.signon.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=spf1 include:mailgun.org ~all"
      ]
    }, 
    {
      name = "_asvdns-1368460e-82b0-4fe6-8159-ba7532c2e9a9.email.signon.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "asvdns_ccbe4dca-c769-4946-b932-68d66b91d6a1"
      ]
    }, 
    {
      name = "_dmarc.email.signon.service.justice.gov.uk."
      type = "TXT"
      ttl = 3600
      
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@digitaljustice.gov.uk;"
      ]
    }, 
    {
      name = "mx._domainkey.email.signon.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDNNKpuOcGQsFgvWN3qC8/QQIfBPINUnEAUXY/AR9e0IvICga25VmPQReH0U4VJBYsnGeHOsOj0wUU753RwvWkvsDn/hq1xxe3rqJKzTu62H6D1vnbTnEer9BRwmi/fxXKIAQo0E8VYKfiTNTj5UKLT266qDmfWHV2dBJxstzNoNQIDAQAB"
      ]
    }, 
    {
      name = "staging.signon.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "staging.signon.service.justice.gov.uk.herokudns.com"
      ]
    }, 
    {
      name = "email.staging.signon.service.justice.gov.uk."
      type = "MX"
      ttl = 300
      
      records = [
        "10 mxa.mailgun.org", 
        "20 mxb.mailgun.org"
      ]
    }, 
    {
      name = "email.staging.signon.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "v=spf1 include:mailgun.org ~all"
      ]
    }, 
    {
      name = "mx._domainkey.email.staging.signon.service.justice.gov.uk."
      type = "TXT"
      ttl = 300
      
      records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLocx6JmWwUSImR6yIPoA4VXEMCw2rYHNxTnONt+iIl9MJaHALJhTtdVwv9+s76wSShRVGbRce9Ry5Kat1oIQoY3R6G1PJd8T+D2SIlaeXT0rC4v2UNIqiQWLkoTiuSEdef99t709Yl+VqJOoZXiELfJqHZ0qakdyz0XZauHoz/wIDAQAB"
      ]
    }, 
    {
      name = "www.signon.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "www.signon.service.justice.gov.uk.herokudns.com"
      ]
    }, 
    {
      name = "social-justice-problems.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-840.awsdns-41.net", 
        "ns-1452.awsdns-53.org", 
        "ns-280.awsdns-35.com", 
        "ns-2019.awsdns-60.co.uk"
      ]
    }, 
    {
      name = "staff.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1608.awsdns-09.co.uk.", 
        "ns-80.awsdns-10.com.", 
        "ns-1040.awsdns-02.org.", 
        "ns-535.awsdns-02.net."
      ]
    }, 
    {
      name = "crime-reference-data-api.staging.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "d8c7a952-7958-4bef-8333-972ce2789eba.cloudapp.net"
      ]
    }, 
    {
      name = "studio-hosting.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns1-07.azure-dns.com.", 
        "ns2-07.azure-dns.net.", 
        "ns3-07.azure-dns.org.", 
        "ns4-07.azure-dns.info."
      ]
    }, 
    {
      name = "syslogmoj.service.justice.gov.uk."
      type = "A"
      ttl = 300
      
      records = [
        "10.192.34.12"
      ]
    }, 
    {
      name = "technical-architecture.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "technical-guidance.service.justice.gov.uk."
      type = "CNAME"
      ttl = 60
      
      records = [
        "ministryofjustice.github.io"
      ]
    }, 
    {
      name = "tipstaff.service.justice.gov.uk."
      type = "NS"
      ttl = 172800
      
      records = [
        "ns-1652.awsdns-14.co.uk.", 
        "ns-181.awsdns-22.com.", 
        "ns-653.awsdns-17.net.", 
        "ns-1373.awsdns-43.org."
      ]
    }, 
    {
      name = "track-a-query.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-778.awsdns-33.net.", 
        "ns-1048.awsdns-03.org.", 
        "ns-1947.awsdns-51.co.uk.", 
        "ns-166.awsdns-20.com."
      ]
    }, 
    {
      name = "use-of-force.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1845.awsdns-38.co.uk.", 
        "ns-1521.awsdns-62.org.", 
        "ns-696.awsdns-23.net.", 
        "ns-181.awsdns-22.com."
      ]
    }, 
    {
      name = "veracode.service.justice.gov.uk."
      type = "A"
      
      alias = {
        zone_id = "Z2FDTNDATAQYW2"
        name = "drr22pxim2tys.cloudfront.net."
        evaluate_target_health = false
      }
    }, 
    {
      name = "_36085f4d854229b89162cf35526735a4.veracode.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_0a2dba7b1664c940d34705e311453efd.jddtvkljgg.acm-validations.aws."
      ]
    }, 
    {
      name = "victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-796.awsdns-35.net.", 
        "ns-309.awsdns-38.com.", 
        "ns-1938.awsdns-50.co.uk.", 
        "ns-1386.awsdns-45.org."
      ]
    }, 
    {
      name = "dev.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1605.awsdns-08.co.uk", 
        "ns-1461.awsdns-54.org", 
        "ns-967.awsdns-56.net", 
        "ns-240.awsdns-30.com"
      ]
    }, 
    {
      name = "www.dev.victim-case-management.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "www.dev.vcms.probation.hmpps.dsd.io"
      ]
    }, 
    {
      name = "perf.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-924.awsdns-51.net.", 
        "ns-1260.awsdns-29.org.", 
        "ns-1835.awsdns-37.co.uk.", 
        "ns-204.awsdns-25.com."
      ]
    }, 
    {
      name = "www.perf.victim-case-management.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "www.perf.vcms.probation.hmpps.dsd.io"
      ]
    }, 
    {
      name = "preprod.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1512.awsdns-61.org.", 
        "ns-1960.awsdns-53.co.uk.", 
        "ns-902.awsdns-48.net.", 
        "ns-99.awsdns-12.com."
      ]
    }, 
    {
      name = "www.preprod.victim-case-management.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "www.preprod.vcms.probation.hmpps.dsd.io"
      ]
    }, 
    {
      name = "stage.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1197.awsdns-21.org.", 
        "ns-1770.awsdns-29.co.uk.", 
        "ns-145.awsdns-18.com.", 
        "ns-983.awsdns-58.net."
      ]
    }, 
    {
      name = "www.stage.victim-case-management.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "www.stage.vcms.probation.hmpps.dsd.io"
      ]
    }, 
    {
      name = "test.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-107.awsdns-13.com.", 
        "ns-1540.awsdns-00.co.uk.", 
        "ns-642.awsdns-16.net.", 
        "ns-1346.awsdns-40.org."
      ]
    }, 
    {
      name = "www.test.victim-case-management.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "www.test.vcms.probation.hmpps.dsd.io"
      ]
    }, 
    {
      name = "www.victim-case-management.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "www.victim-support.service.justice.gov.uk"
      ]
    }, 
    {
      name = "victim-support.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-19.awsdns-02.com.", 
        "ns-1959.awsdns-52.co.uk.", 
        "ns-1111.awsdns-10.org.", 
        "ns-874.awsdns-45.net."
      ]
    }, 
    {
      name = "video.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-52.awsdns-06.com.", 
        "ns-936.awsdns-53.net.", 
        "ns-1867.awsdns-41.co.uk.", 
        "ns-1464.awsdns-55.org."
      ]
    }, 
    {
      name = "view-court-data.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-808.awsdns-37.net.", 
        "ns-116.awsdns-14.com.", 
        "ns-1042.awsdns-02.org.", 
        "ns-1921.awsdns-48.co.uk."
      ]
    }, 
    {
      name = "whereabouts-api-dev.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1336.awsdns-39.org.", 
        "ns-318.awsdns-39.com.", 
        "ns-599.awsdns-10.net.", 
        "ns-1698.awsdns-20.co.uk."
      ]
    }, 
    {
      name = "whereabouts-api-preprod.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-202.awsdns-25.com.", 
        "ns-1222.awsdns-24.org.", 
        "ns-627.awsdns-14.net.", 
        "ns-2006.awsdns-58.co.uk."
      ]
    }, 
    {
      name = "whereabouts-api.service.justice.gov.uk."
      type = "NS"
      ttl = 300
      
      records = [
        "ns-1264.awsdns-30.org.", 
        "ns-278.awsdns-34.com.", 
        "ns-602.awsdns-11.net.", 
        "ns-1589.awsdns-06.co.uk."
      ]
    }, 
    {
      name = "youth-justice-worker-online-assessment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d2hibplym7mrg2.cloudfront.net"
      ]
    }, 
    {
      name = "_1864366b68aacd731e332b25536285ec.youth-justice-worker-online-assessment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "_e72600de9a318ad62f0043b30a9fc5fb.hkmpvcwbzw.acm-validations.aws."
      ]
    }, 
    {
      name = "www.youth-justice-worker-online-assessment.service.justice.gov.uk."
      type = "CNAME"
      ttl = 300
      
      records = [
        "d2hibplym7mrg2.cloudfront.net"
      ]
    }
  ]
}