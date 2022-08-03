module "service_justice_gov_uk_zone" {
  source = "./modules/route53/zone"

  name = "service.justice.gov.uk"
  tags = {
    component = "None"
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
        zone_id                = "Z1BKCTXD74EZPE"
        name                   = "s3-website-eu-west-1.amazonaws.com."
        evaluate_target_health = false
      }
    },
    {
      name = "service.justice.gov.uk."
      type = "MX"
      ttl  = 1800
      records = [
        "10 inbound-smtp.eu-west-1.amazonaws.com"
      ]
    },
    {
      name = "service.justice.gov.uk."
      type = "NS"
      ttl  = 86400
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
      ttl  = 300
      records = [
        "ns-1389.awsdns-45.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
      ]
    },
    {
      name = "service.justice.gov.uk."
      type = "SPF"
      ttl  = 600
      records = [
        "v=spf1 -all"
      ]
    },
    {
      name = "service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 ~all",
        "MS=ms96686635"
      ]
    },
    {
      name = "_acme-challenge.service.justice.gov.uk."
      type = "TXT"
      ttl  = 60
      records = [
        "-IL71TL-cbvkAym1UdVEBnNHNA6liqEpklQzC-ECAXk"
      ]
    },
    {
      name = "_amazonses.service.justice.gov.uk."
      type = "TXT"
      ttl  = 1800
      records = [
        "kkjhEp32ohHTaRqLf4j/uQ1jyCZc6/ptXyW2zBfFmhs="
      ]
    },
    {
      name = "_dmarc.service.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@digitaljustice.gov.uk;"
      ]
    },
    {
      name = "pqzo3wwgkdgsl3s5fmad52yftinv4hvm._domainkey.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "pqzo3wwgkdgsl3s5fmad52yftinv4hvm.dkim.amazonses.com"
      ]
    },
    {
      name = "suaehjnchl4x3uc37ltzv4sjvox32tsg._domainkey.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "suaehjnchl4x3uc37ltzv4sjvox32tsg.dkim.amazonses.com"
      ]
    },
    {
      name = "szoj7fx3wpkvnzuanwtrpqiva5ov4bca._domainkey.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 1800
      records = [
        "szoj7fx3wpkvnzuanwtrpqiva5ov4bca.dkim.amazonses.com"
      ]
    },
    {
      name = "_smtp._tls.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "advance-into-justice.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "d2zug2r9gue1ql.cloudfront.net."
      ]
    },
    {
      name = "_95ea75a7f508104bbae8244e26130e7e.advance-into-justice.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_7bd56adf412cd4bc93a83eeb6d808f81.ylqxxscwpq.acm-validations.aws"
      ]
    },
    {
      name = "www.advance-into-justice.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "d2zug2r9gue1ql.cloudfront.net."
      ]
    },
    {
      name = "analytical-platform.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "analytical-platform.service.justice.gov.uk."
      ]
    },
    {
      name = "analyticalplatform.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "analytical-platform.service.justice.gov.uk."
      ]
    },
    {
      name = "ap.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "analytical-platform.service.justice.gov.uk."
      ]
    },
    {
      name = "apply-for-legal-aid.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 60
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
      ttl  = 60
      records = [
        "molecular-toad-kokt7cvogddhzdjurci2t668.herokudns.com"
      ]
    },
    {
      name = "bichard7.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 60
      records = [
        "h3EfKuixfZMRj30lClIYS1M7Xivu2Ccp06WwgwiTgik"
      ]
    },
    {
      name = "cafm.service.justice.gov.uk."
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
      name = "check-when-to-disclose-caution-conviction.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "ns-1702.awsdns-20.co.uk",
        "ns-174.awsdns-21.com",
        "ns-870.awsdns-44.net",
        "ns-1213.awsdns-23.org"
      ]
    },
    {
      name = "contact-moj.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "10 cluster5.eu.messagelabs.com",
        "20 cluster5a.eu.messagelabs.com"
      ]
    },
    {
      name = "court-transcription.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:spf.messagelabs.com -all",
        "C0E4N61551"
      ]
    },
    {
      name = "courttran._domainkey.court-transcription.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; k=rsa; t=s; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7MhZQPsxhhTHvp49pndvqDRS2QftpqaRSIcI9qnES6ekEi0Zssh7yLudCBNxzgeSYVmFQxELbXLq7G8pjUAiAO8xu+S5PD2x2sIozb1kJwwCjnXnsb/s4LKaCl0Lw\"\"GU7APT7XZeo7f5mcXl8SQKem5WXrWuF3bi8gJxt3mhuJeQ9EzLPfIgirm8dcgI0nRkvKdcJLRELToOBp1S3VWTpxisaPOvmFjHNiHZBtshcj0INYNDU4VgRS4d0JzTQ/2qnpP25j85H0DO8yHuTxA4IGV2R4LZ63YZNedovfm3sgtEkK1VDh8wnHE1R2mH1WKhSwH0w/MXh0Ryb/HqfPxkO7wIDAQAB"
      ]
    },
    {
      name = "courttrans._domainkey.court-transcription.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; k=rsa; t=s; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtY2c1cgFCefu74UupXeaNc+LZxBPUn6DTNU0ZzurvIy/YOtVdjMO7JLA6HkmlS5XDVCENytyp+jUbDbbtWibw28fw8g4vODbe59IOzCX/HtWEJdIrwBWpCXm6gafQOWpjW1x7ktGVNsIj7k/EpTCcW0pBtYhnfwh06MI0643clxhKjOV8IZUvzVZ4p\"\"ZOC/1uVsmQdIi/vDpWT6WYTY7/A1cAkfUlsXUgNSoBtGPZG4wH3HsUtq/HlNriQCmGVf3nqPzz4hoc3VeYi6fp89kBrIYWfmb11oCNWB2U9Ne5QtaB8NodY50oFhz5DVR29pXHjfKUEbYXVQaU5yYMUBYmoQIDAQAB"
      ]
    },
    {
      name = "_h323cs._tcp.courts-video-link.service.justice.gov.uk."
      type = "SRV"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "213.216.136.71"
      ]
    },
    {
      name = "pxpxy002-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.201"
      ]
    },
    {
      name = "pxpxy003-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.216.136.72"
      ]
    },
    {
      name = "pxpxy004-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.202"
      ]
    },
    {
      name = "pxpxy005-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.216.136.73"
      ]
    },
    {
      name = "pxpxy006-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.203"
      ]
    },
    {
      name = "pxpxy007-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.216.136.74"
      ]
    },
    {
      name = "pxpxy008-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.204"
      ]
    },
    {
      name = "pxpxy009-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.216.136.75"
      ]
    },
    {
      name = "pxpxy010-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.205"
      ]
    },
    {
      name = "pxpxy011-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.216.136.76"
      ]
    },
    {
      name = "pxpxy012-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.206"
      ]
    },
    {
      name = "pxpxy013-dc01.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.216.136.77"
      ]
    },
    {
      name = "pxpxy014-dc02.courts-video-link.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "217.135.104.207"
      ]
    },
    {
      name = "crime-portal-mirror-gateway-probation.service.justice.gov.uk."
      type = "NS"
      ttl  = 60
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
      ttl  = 60
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
      ttl  = 60
      records = [
        "ffc33a8e-6ac2-4e92-996e-a7f9e12bd1cf.cloudapp.net"
      ]
    },
    {
      name = "csr.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "ns1-04.azure-dns.com.",
        "ns2-04.azure-dns.net.",
        "ns3-04.azure-dns.org.",
        "ns4-04.azure-dns.info."
      ]
    },
    {
      name = "design-patterns.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "ministryofjustice.github.io"
      ]
    },
    {
      name = "digitalprisons.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns1-09.azure-dns.com",
        "ns2-09.azure-dns.net",
        "ns3-09.azure-dns.org",
        "ns4-09.azure-dns.info"
      ]
    },
    {
      name = "electronic-monitoring.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "mailgun.org"
      ]
    },
    {
      name = "equip.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1877.awsdns-42.co.uk",
        "ns-329.awsdns-41.com",
        "ns-1256.awsdns-29.org",
        "ns-845.awsdns-41.net"
      ]
    },
    {
      name = "familymediators.service.justice.gov.uk."
      type = "NS"
      ttl  = 60
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
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "ubi-p-loadb-1rk7d55h8z4t3-1469044134.eu-west-2.elb.amazonaws.com"
        evaluate_target_health = true
      }
    },
    {
      name = "find-unclaimed-court-money.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 60
      records = [
        "_06c52dec40633865541b0ff381d9eeb1.chvvfdvqrj.acm-validations.aws"
      ]
    },
    {
      name = "_6f2592c897ce1cb57321ce86823bba01.www.find-unclaimed-court-money.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_b889b9713a37c39694f437333e017428.chvvfdvqrj.acm-validations.aws."
      ]
    },
    {
      name = "form.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-999.awsdns-60.net.",
        "ns-1694.awsdns-19.co.uk.",
        "ns-1436.awsdns-51.org.",
        "ns-322.awsdns-40.com."
      ]
    },
    {
      name = "helpwithchildarrangements.service.justice.gov.uk."
      type = "NS"
      ttl  = 100
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "_1629a8735ac3c49c7b5103d8d7459027.tljzshvwok.acm-validations.aws"
      ]
    },
    {
      name = "hmpps-assessments.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "performance-hub.hmpps-production.modernisation-platform.service.justice.gov.uk"
      ]
    },
    {
      name = "staging.hmpps-performance-hub.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "performance-hub.hmpps-preproduction.modernisation-platform.service.justice.gov.uk"
      ]
    },
    {
      name = "hmpps.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1048.awsdns-03.org.",
        "ns-384.awsdns-48.com.",
        "ns-1972.awsdns-54.co.uk.",
        "ns-585.awsdns-09.net."
      ]
    },
    {
      name = "integrationtest.service.justice.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-1259.awsdns-29.org.",
        "ns-843.awsdns-41.net.",
        "ns-1760.awsdns-28.co.uk.",
        "ns-213.awsdns-26.com."
      ]
    },
    {
      name = "ftp-hmcts.intranet.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "54.72.29.113"
      ]
    },
    {
      name = "hmcts.intranet.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "54.72.29.113"
      ]
    },
    {
      name = "jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "jacintranet.prod.wp.dsd.io"
      ]
    },
    {
      name = "s1._domainkey.jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s1.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s2.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "em1424.jac.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "judicialappointmentscommission.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "jac.intranet.service.justice.gov.uk"
      ]
    },
    {
      name = "judicialoffice.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "jointranet.prod.wp.dsd.io"
      ]
    },
    {
      name = "lawcommission.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "lawcomintranet.prod.wp.dsd.io"
      ]
    },
    {
      name = "legalaidagency.intranet.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "134.213.160.26"
      ]
    },
    {
      name = "officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "osptintranet.prod.wp.dsd.io"
      ]
    },
    {
      name = "s1._domainkey.officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s1.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "s2._domainkey.officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "s2.domainkey.u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "em1689.officialsolicitorandpublictrustee.intranet.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "u2320754.wl005.sendgrid.net"
      ]
    },
    {
      name = "jacksapp-devs.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 60
      records = [
        "jury-prototype.herokuapp.com"
      ]
    },
    {
      name = "laa-fee-calculator.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-877.awsdns-45.net.",
        "ns-324.awsdns-40.com.",
        "ns-1399.awsdns-46.org.",
        "ns-1537.awsdns-00.co.uk."
      ]
    },
    {
      name = "user-guide.laa-operations.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ministryofjustice.github.io"
      ]
    },
    {
      name = "list-assist.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.132.40.131"
      ]
    },
    {
      name = "sandbox.list-assist.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.132.208.237"
      ]
    },
    {
      name = "sit.list-assist.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.104.255.139"
      ]
    },
    {
      name = "trg.list-assist.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "20.49.168.240"
      ]
    },
    {
      name = "uat.list-assist.service.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "20.49.165.220"
      ]
    },
    {
      name = "manage-external-funded-offender-provision.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d2p66dhqonjkjj.cloudfront.net"
        evaluate_target_health = false
      }
    },
    {
      name = "_e423c56d23dc0dce73d7af3276cfd0e6.manage-external-funded-offender-provision.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_e74deb9ca8229527592f88459265f1ef.kirrbxfjtw.acm-validations.aws."
      ]
    },
    {
      name = "manage-key-workers.service.justice.gov.uk."
      type = "NS"
      ttl  = 60
      records = [
        "ns-1028.awsdns-00.org.",
        "ns-1932.awsdns-49.co.uk.",
        "ns-62.awsdns-07.com.",
        "ns-887.awsdns-46.net."
      ]
    },
    {
      name = "ministry-of-justice-acronyms.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ministryofjustice.github.io"
      ]
    },
    {
      name = "mod-platform-monitoring.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 60
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
      ttl  = 300
      records = [
        "_bd1482675a747ec82c7ba756a5391a54.ylqxxscwpq.acm-validations.aws"
      ]
    },
    {
      name = "network-access-control.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "ns-761.awsdns-31.net.",
        "ns-1323.awsdns-37.org.",
        "ns-2012.awsdns-59.co.uk.",
        "ns-481.awsdns-60.com."
      ]
    },
    {
      name = "dart.nle.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "hmcts-nle.azurefd.net"
      ]
    },
    {
      name = "darts.nle.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
        zone_id                = "Z32O12XQLNTSW2"
        name                   = "nomsapi-prod-apigateway-133650463.eu-west-1.elb.amazonaws.com"
        evaluate_target_health = false
      }
    },
    {
      name = "oasys-auth.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "prisoners-elboffen-tihe091e7s7f-723595351.eu-west-2.elb.amazonaws.com"
        evaluate_target_health = false
      }
    },
    {
      name = "offenders.service.justice.gov.uk."
      type = "A"
      alias = {
        zone_id                = "ZHURV8PSTC4K8"
        name                   = "prisoners-elboffen-tihe091e7s7f-723595351.eu-west-2.elb.amazonaws.com"
        evaluate_target_health = false
      }
    },
    {
      name = "offloc.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "ministryofjustice.github.io"
      ]
    },
    {
      name = "opg.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1224.awsdns-25.org",
        "ns-1941.awsdns-50.co.uk",
        "ns-676.awsdns-20.net",
        "ns-86.awsdns-10.com"
      ]
    },
    {
      name = "pathfinder.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "stats.pingdom.com"
      ]
    },
    {
      name = "prepare-case-probation.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1171.awsdns-18.org.",
        "ns-93.awsdns-11.com.",
        "ns-531.awsdns-02.net.",
        "ns-1748.awsdns-26.co.uk."
      ]
    },
    {
      name = "prison.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
      records = [
        "ns-1688.awsdns-19.co.uk.",
        "ns-203.awsdns-25.com.",
        "ns-639.awsdns-15.net.",
        "ns-1401.awsdns-47.org."
      ]
    },
    {
      name = "prisoner-money.service.justice.gov.uk."
      type = "NS"
      ttl  = 3600
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
      ttl  = 300
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
      ttl  = 60
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
      ttl  = 300
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
      ttl  = 300
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
        zone_id                = "ZD4D7Y8KGAS4G"
        name                   = "a298b2a91402d11e9b7fa0abe03ddaa3-97fb50d98e3c6eed.elb.eu-west-2.amazonaws.com"
        evaluate_target_health = false
      }
    },
    {
      name = "pvlbookingsystem.service.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.140.30.40"
      ]
    },
    {
      name = "www.pvlbookingsystem.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 600
      records = [
        "pvlbookingsystem.service.justice.gov.uk."
      ]
    },
    {
      name = "pvlbookingsystemtest.service.justice.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.140.154.247"
      ]
    },
    {
      name = "pvlbookingsystemtest.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "7fcq2rv3orelq7se5k09lonlee"
      ]
    },
    {
      name = "_amazonses.recruitment.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "FMIsX4cTH5TyOjbMPzBpbk/CK9ZC6oY2G6Vvu6D1Acw="
      ]
    },
    {
      name = "bm4eh3fe5tzqaedogvql4r27syh3gry5._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "bm4eh3fe5tzqaedogvql4r27syh3gry5.dkim.amazonses.com"
      ]
    },
    {
      name = "ovzlyraz4oolzol4giy6q5o3svtb234i._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ovzlyraz4oolzol4giy6q5o3svtb234i.dkim.amazonses.com"
      ]
    },
    {
      name = "yokjyxwd7trqo3yra5buqzqzx7lx3phg._domainkey.recruitment.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "yokjyxwd7trqo3yra5buqzqzx7lx3phg.dkim.amazonses.com"
      ]
    },
    {
      name = "refer-monitor-intervention.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "ns-1522.awsdns-62.org.",
        "ns-46.awsdns-05.com.",
        "ns-704.awsdns-24.net.",
        "ns-1717.awsdns-22.co.uk."
      ]
    },
    {
      name = "search-information-about-legal-problems.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d3j9as4guikn28.cloudfront.net"
        evaluate_target_health = false
      }
    },
    {
      name = "_935f4ad292e31cb21e5bf6043b20a2bf.securecodewarrior.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_f65a4f48e9990c0858b5134cdc625b9b.kzhndfqvzk.acm-validations.aws."
      ]
    },
    {
      name = "security-guidance.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "ministryofjustice.github.io"
      ]
    },
    {
      name = "security-operations.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "d28jr85k43dhb7.cloudfront.net"
        evaluate_target_health = false
      }
    },
    {
      name = "_33da21e90254237bcc4d8ad00bd3d118.security-training.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_6165ac1a2a05feaefa1cc4aaf7d09b0b.kgnrpmcdhl.acm-validations.aws."
      ]
    },
    {
      name = "securityoperations.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 3600
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
      ttl  = 300
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
      ttl  = 60
      records = [
        "signon.service.justice.gov.uk.herokudns.com"
      ]
    },
    {
      name = "email.signon.service.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 mxa.mailgun.org",
        "20 mxb.mailgun.org"
      ]
    },
    {
      name = "email.signon.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:mailgun.org ~all"
      ]
    },
    {
      name = "_dmarc.email.signon.service.justice.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=none;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@digitaljustice.gov.uk;"
      ]
    },
    {
      name = "mx._domainkey.email.signon.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDNNKpuOcGQsFgvWN3qC8/QQIfBPINUnEAUXY/AR9e0IvICga25VmPQReH0U4VJBYsnGeHOsOj0wUU753RwvWkvsDn/hq1xxe3rqJKzTu62H6D1vnbTnEer9BRwmi/fxXKIAQo0E8VYKfiTNTj5UKLT266qDmfWHV2dBJxstzNoNQIDAQAB"
      ]
    },
    {
      name = "staging.signon.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "staging.signon.service.justice.gov.uk.herokudns.com"
      ]
    },
    {
      name = "email.staging.signon.service.justice.gov.uk."
      type = "MX"
      ttl  = 300
      records = [
        "10 mxa.mailgun.org",
        "20 mxb.mailgun.org"
      ]
    },
    {
      name = "email.staging.signon.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 include:mailgun.org ~all"
      ]
    },
    {
      name = "mx._domainkey.email.staging.signon.service.justice.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLocx6JmWwUSImR6yIPoA4VXEMCw2rYHNxTnONt+iIl9MJaHALJhTtdVwv9+s76wSShRVGbRce9Ry5Kat1oIQoY3R6G1PJd8T+D2SIlaeXT0rC4v2UNIqiQWLkoTiuSEdef99t709Yl+VqJOoZXiELfJqHZ0qakdyz0XZauHoz/wIDAQAB"
      ]
    },
    {
      name = "www.signon.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "www.signon.service.justice.gov.uk.herokudns.com"
      ]
    },
    {
      name = "staff.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 60
      records = [
        "d8c7a952-7958-4bef-8333-972ce2789eba.cloudapp.net"
      ]
    },
    {
      name = "studio-hosting.service.justice.gov.uk."
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
      name = "technical-guidance.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 60
      records = [
        "ministryofjustice.github.io"
      ]
    },
    {
      name = "track-a-query.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
        zone_id                = "Z2FDTNDATAQYW2"
        name                   = "drr22pxim2tys.cloudfront.net"
        evaluate_target_health = false
      }
    },
    {
      name = "_36085f4d854229b89162cf35526735a4.veracode.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_0a2dba7b1664c940d34705e311453efd.jddtvkljgg.acm-validations.aws."
      ]
    },
    {
      name = "victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "www.dev.vcms.probation.hmpps.dsd.io"
      ]
    },
    {
      name = "perf.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "www.perf.vcms.probation.hmpps.dsd.io"
      ]
    },
    {
      name = "preprod.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "www.preprod.vcms.probation.hmpps.dsd.io"
      ]
    },
    {
      name = "stage.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "www.stage.vcms.probation.hmpps.dsd.io"
      ]
    },
    {
      name = "test.victim-case-management.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
      records = [
        "www.test.vcms.probation.hmpps.dsd.io"
      ]
    },
    {
      name = "www.victim-case-management.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "www.victim-support.service.justice.gov.uk"
      ]
    },
    {
      name = "victim-support.service.justice.gov.uk."
      type = "NS"
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
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
      ttl  = 300
      records = [
        "ns-1264.awsdns-30.org.",
        "ns-278.awsdns-34.com.",
        "ns-602.awsdns-11.net.",
        "ns-1589.awsdns-06.co.uk."
      ]
    },
    {
      name = "wmt.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "2cf0a33f-b4b5-4296-a336-a007733ffbe5.cloudapp.net"
      ]
    },
    {
      name = "youth-justice-worker-online-assessment.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "d2hibplym7mrg2.cloudfront.net"
      ]
    },
    {
      name = "_1864366b68aacd731e332b25536285ec.youth-justice-worker-online-assessment.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "_e72600de9a318ad62f0043b30a9fc5fb.hkmpvcwbzw.acm-validations.aws."
      ]
    },
    {
      name = "www.youth-justice-worker-online-assessment.service.justice.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "d2hibplym7mrg2.cloudfront.net"
      ]
    },
    {
      name = "prison-education-support.service.justice.gov.uk"
      type = "MX"
      ttl  = 300
      records = [
        "1 ASPMX.L.GOOGLE.COM.",
        "10 ALT3.ASPMX.L.GOOGLE.COM.",
        "10 ALT4.ASPMX.L.GOOGLE.COM.",
        "5 ALT1.ASPMX.L.GOOGLE.COM.",
        "5 ALT2.ASPMX.L.GOOGLE.COM.",
      ]
    },
    {
      name = "prison-education-support.service.justice.gov.uk"
      type = "TXT"
      ttl  = 300
      records = [
        "google-site-verification=8nQHRQ-Z2NxNUcSmlpH-rOZytJpVYqW4g9et7HnojPA"
      ]
    },
    {
      name                             = "courts-video-link.service.justice.gov.uk"
      type                             = "A"
      ttl                              = 300,
      records                          = ["213.216.136.71"]
      health_check_id                  = aws_route53_health_check.courts_video_link_service_justice_gov_uk_multivalue_primary.id
      set_identifier                   = "Primary"
      multivalue_answer_routing_policy = true
    },
    {
      name                             = "courts-video-link.service.justice.gov.uk"
      type                             = "A"
      ttl                              = 300,
      records                          = ["217.135.104.201"]
      health_check_id                  = aws_route53_health_check.courts_video_link_service_justice_gov_uk_multivalue_secondary.id
      set_identifier                   = "Secondary"
      multivalue_answer_routing_policy = true
    },
    {
      name                             = "courts-video-link.service.justice.gov.uk"
      type                             = "A"
      ttl                              = 300,
      records                          = ["213.216.136.72"]
      health_check_id                  = aws_route53_health_check.courts_video_link_service_justice_gov_uk_multivalue_tertiary.id
      set_identifier                   = "courts-video-link-tertiary"
      multivalue_answer_routing_policy = true
    },
    {
      name                             = "courts-video-link.service.justice.gov.uk"
      type                             = "A"
      ttl                              = 300,
      records                          = ["217.135.104.202"]
      health_check_id                  = aws_route53_health_check.courts_video_link_service_justice_gov_uk_multivalue_quarternary.id
      set_identifier                   = "courts-video-link-quarternary"
      multivalue_answer_routing_policy = true
    }
  ]
}

moved {
  from = module.service_justice_gov_uk.aws_route53_record.default
  to   = module.service_justice_gov_uk_records.aws_route53_record.this
}

moved {
  from = module.service_justice_gov_uk.aws_route53_zone.default
  to   = module.service_justice_gov_uk_zone.aws_route53_zone.this
}

################
# Healthchecks #
################
resource "aws_route53_health_check" "courts_video_link_service_justice_gov_uk_multivalue_primary" {
  ip_address        = "213.216.136.71"
  port              = 443
  type              = "TCP"
  failure_threshold = "3"
  request_interval  = "30"

  tags = {
    Name = "courts-video-link.service.justice.gov.uk primary"
  }
}

resource "aws_route53_health_check" "courts_video_link_service_justice_gov_uk_multivalue_secondary" {
  ip_address        = "217.135.104.201"
  port              = 443
  type              = "TCP"
  failure_threshold = "3"
  request_interval  = "30"

  tags = {
    Name = "courts-video-link.service.justice.gov.uk-secondary"
  }
}

resource "aws_route53_health_check" "courts_video_link_service_justice_gov_uk_multivalue_tertiary" {
  ip_address        = "213.216.136.72"
  port              = 443
  type              = "TCP"
  failure_threshold = "3"
  request_interval  = "30"

  tags = {
    Name = "courts-video-link.service.justice.gov.uk-tertiary"
  }
}

resource "aws_route53_health_check" "courts_video_link_service_justice_gov_uk_multivalue_quarternary" {
  ip_address        = "217.135.104.202"
  port              = 443
  type              = "TCP"
  failure_threshold = "3"
  request_interval  = "30"

  tags = {
    Name = "courts-video-link.service.justice.gov.uk-quaternary"
  }
}

moved {
  from = module.courts_video_link_service_justice_gov_uk_multivalue.aws_route53_record.multivalue["Primary"]
  to   = module.service_justice_gov_uk_records.aws_route53_record.this["courts-video-link.service.justice.gov.uk_A_Primary"]
}

moved {
  from = module.courts_video_link_service_justice_gov_uk_multivalue.aws_route53_record.multivalue["Secondary"]
  to   = module.service_justice_gov_uk_records.aws_route53_record.this["courts-video-link.service.justice.gov.uk_A_Secondary"]
}

moved {
  from = module.courts_video_link_service_justice_gov_uk_multivalue.aws_route53_record.multivalue["courts-video-link-tertiary"]
  to   = module.service_justice_gov_uk_records.aws_route53_record.this["courts-video-link.service.justice.gov.uk_A_courts-video-link-tertiary"]
}

moved {
  from = module.courts_video_link_service_justice_gov_uk_multivalue.aws_route53_record.multivalue["courts-video-link-quarternary"]
  to   = module.service_justice_gov_uk_records.aws_route53_record.this["courts-video-link.service.justice.gov.uk_A_courts-video-link-quarternary"]
}
