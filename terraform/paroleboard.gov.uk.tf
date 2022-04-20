module "paroleboard_gov_uk" {
  source = "./modules/route53"

  domain      = "paroleboard.gov.uk"
  description = ""

  records = [
    {
      name = "paroleboard.gov.uk."
      type = "A"
      ttl  = 3600
      records = [
        "52.30.196.9"
      ]
    },
    {
      name = "paroleboard.gov.uk."
      type = "MX"
      ttl  = 3600
      records = [
        "0 paroleboard-gov-uk.mail.protection.outlook.com"
      ]
    },
    {
      name = "paroleboard.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-56.awsdns-07.com.",
        "ns-1689.awsdns-19.co.uk.",
        "ns-708.awsdns-24.net.",
        "ns-1480.awsdns-57.org."
      ]
    },
    {
      name = "paroleboard.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "YcrqOH4L",
        "ms=ms20657591",
        "v=spf1 include:spf.protection.outlook.com include:mail.zendesk.com -all"
      ]
    },
    {
      name = "_dmarc.paroleboard.gov.uk."
      type = "TXT"
      ttl  = 3600
      records = [
        "v=DMARC1;p=reject;sp=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk,mailto:dmarc@paroleboard.gov.uk"
      ]
    },
    {
      name = "selector1._domainkey.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector1-paroleboard-gov-uk._domainkey.digitalparole.onmicrosoft.com"
      ]
    },
    {
      name = "selector2._domainkey.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "selector2-paroleboard-gov-uk._domainkey.digitalparole.onmicrosoft.com"
      ]
    },
    {
      name = "_msradc.paroleboard.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "https://rdweb.wvd.microsoft.com/api/arm/feeddiscovery"
      ]
    },
    {
      name = "_sipfederationtls._tcp.paroleboard.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 5061 sipfed.online.lync.com"
      ]
    },
    {
      name = "_sip._tls.paroleboard.gov.uk."
      type = "SRV"
      ttl  = 3600
      records = [
        "100 1 443 sipdir.online.lync.com"
      ]
    },
    {
      name = "_smtp._tls.paroleboard.gov.uk."
      type = "TXT"
      ttl  = 300
      records = [
        "v=TLSRPTv1;rua=mailto:tls-rua@mailcheck.service.ncsc.gov.uk"
      ]
    },
    {
      name = "autodiscover.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "autodiscover.outlook.com"
      ]
    },
    {
      name = "avpn.paroleboard.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.149.2.10"
      ]
    },
    {
      name = "_2c9cf18ffb256b87a2247e67cd65ed54.avpn.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "7B94FA6E040A63C71D7D7E4127E0E894.9CE1C243E35315123FDA812BC1BAFC5D.6e958d69ccac1ad04342.comodoca.com."
      ]
    },
    {
      name = "_31f1c133a1aeafe8acdf3895421db2cc.avpn.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "40966C83FC4122EFEF18B12B3A1F2EB4.C56BCFB03B1DF69F9877EB9EAEEFDECA.98f13708210194c47568.sectigo.com."
      ]
    },
    {
      name = "_5fd3b70ea7488505ae6b1838fde422ff.avpn.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "D37D914471D618399B72FBB6E9A052DB.84DEB2FCE686B3B8991F29F0F2FF6860.9d92ec0fedce3775ae02.sectigo.com."
      ]
    },
    {
      name = "_7ca540b8cc0efa6e84b305823e8007b0.avpn.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "7EC655E94D7C3C3AD7C194C766DC67B0.A7994789C994BDA1497EFDE827293D02.4ab232445f9b21b65dfd.comodoca.com."
      ]
    },
    {
      name = "_afe273c8d416daf9af305f8d4a28956b.avpn.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "19A66D90B98FFA44940D42BA801DAD19.B700E6995C2E18A8C8F276DF42C1E177.26f6abfa0d7725fef678.comodoca.com."
      ]
    },
    {
      name = "_d38d7fdc5d6c75e7f16db2a2f2cb1e95.avpn.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "644283133AE66256069FAFECD724F04A.B8A6658BA94C7BDBAF5224A8F80C4AAF.1f892c7fae284a3a13a1.comodoca.com."
      ]
    },
    {
      name = "enterpriseenrollment.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseenrollment.manage.microsoft.com"
      ]
    },
    {
      name = "enterpriseregistration.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "enterpriseregistration.windows.net"
      ]
    },
    {
      name = "lyncdiscover.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "webdir.online.lync.com"
      ]
    },
    {
      name = "msoid.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "clientconfig.microsoftonline-p.net"
      ]
    },
    {
      name = "remote.paroleboard.gov.uk."
      type = "A"
      ttl  = 600
      records = [
        "51.140.159.248"
      ]
    },
    {
      name = "_74b94fe1054fa2413950b8f3108c3a73.remote.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "5822965C2A92CA4FE2D76636712E3E90.C5111CE20C9C953C6E74E2CBF4A5FDE0.169806bb68ccbf5e6f96.comodoca.com."
      ]
    },
    {
      name = "_e7a2241234ef7414306fa5cb6a30b999.remote.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "F89CB26A124C265B7A61F14939440C7C.8289B85964B45A41723007DB7AD56B6F.0bc62afce4c0004839d3.comodoca.com."
      ]
    },
    {
      name = "sip.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 3600
      records = [
        "sipdir.online.lync.com"
      ]
    },
    {
      name = "sopvpn.paroleboard.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "20.50.110.11"
      ]
    },
    {
      name = "_141578dd705e963937742f2df24f4cb0.sopvpn.paroleboard.gov.uk."
      type = "CNAME"
      ttl  = 300
      records = [
        "48E0FF5398B5A96EFB30446D235136D3.5FBF38B37A9D0055478B8EDF4CD6D2C8.c7e274f2fe950fbc3d82.comodoca.com."
      ]
    },
    {
      name = "www.paroleboard.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "52.30.196.9"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
