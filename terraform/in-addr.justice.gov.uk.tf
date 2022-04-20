module "in_addr_justice_gov_uk" {
  source = "./modules/route53"

  domain      = "in-addr.justice.gov.uk"
  description = ""

  records = [
    {
      name = "in-addr.justice.gov.uk."
      type = "NS"
      ttl  = 172800
      records = [
        "ns-968.awsdns-57.net.",
        "ns-1169.awsdns-18.org.",
        "ns-2038.awsdns-62.co.uk.",
        "ns-454.awsdns-56.com."
      ]
    },
    {
      name = "213-121-252-152.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.121.252.152"
      ]
    },
    {
      name = "213-121-252-153.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.121.252.153"
      ]
    },
    {
      name = "213-121-252-154.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.121.252.154"
      ]
    },
    {
      name = "213-121-252-155.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.121.252.155"
      ]
    },
    {
      name = "213-121-252-157.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.121.252.157"
      ]
    },
    {
      name = "213-121-252-158.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.121.252.158"
      ]
    },
    {
      name = "213-121-252-159.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "213.121.252.159"
      ]
    },
    {
      name = "51-149-2-13.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.149.2.13"
      ]
    },
    {
      name = "51-149-2-253.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.149.2.253"
      ]
    },
    {
      name = "51-149-2-254.in-addr.justice.gov.uk."
      type = "A"
      ttl  = 300
      records = [
        "51.149.2.254"
      ]
    }
  ]
}
