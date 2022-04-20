module "mojprint_com" {
  source = "./modules/route53"

  domain      = "mojprint.com"
  description = ""

  records = [
    {
      name = "mojprint.com."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-30.awsdns-03.com.",
        "ns-1807.awsdns-33.co.uk.",
        "ns-938.awsdns-53.net.",
        "ns-1424.awsdns-50.org."
      ]
    },
    {
      name = "*.mojprint.com."
      type = "CNAME"
      ttl  = 300
      records = [
        "mojprint.com"
      ]
    },
    {
      name = "_97d472349d89e7692aeb87ce31042e84.mojprint.com."
      type = "CNAME"
      ttl  = 300
      records = [
        "12925FF277EAC71B2F1623C269DAEDE6.DCABC67D6457BE38E3A9397973EA2EBA.63947ae3848501f86fba.comodoca.com."
      ]
    },
    {
      name = "_bd2f5b9237de177b8d9b5f4c2b15c681.mojprint.com."
      type = "CNAME"
      ttl  = 300
      records = [
        "347AB64F351E7D6DD45DDA73975C06A8.F00E6EDD83E97D13174F8478FC0DEACA.5424eee00c1ab222f20c.comodoca.com."
      ]
    },
    {
      name = "_d74791d29d055f418da1fbcea959d0c7.mojprint.com."
      type = "CNAME"
      ttl  = 10800
      records = [
        "B5E269179FEBBF92531EB3F6CE4DE697.5C363D61D2042ED963E9CFECD81E5E48.comodoca.com."
      ]
    },
    {
      name = "_ebe85c4e8dd836c76fc86d8cc1568384.mojprint.com."
      type = "CNAME"
      ttl  = 300
      records = [
        "431E5C1C48A7C92C7408A4D0ABAEE00A.CE1A127593ED5BFD5F13E45B15BC22E5.ed3d2c21991e3bef5e06.comodoca.com."
      ]
    },
    {
      name = "citrix.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "ftp.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "mail.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "remote.mojprint.com."
      type = "A"
      ttl  = 300
      records = [
        "81.144.225.35"
      ]
    },
    {
      name = "www.mojprint.com."
      type = "CNAME"
      ttl  = 300
      records = [
        "mojprint.com"
      ]
    }
  ]

  tags = {
    component = "None"
  }
}
