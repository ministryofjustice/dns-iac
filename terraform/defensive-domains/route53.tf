resource "aws_route53domains_registered_domain" "example" {
  for_each = toset(var.domains)

  domain_name   = each.value
  transfer_lock = false

  dynamic "name_server" {
    for_each = sort(toset(data.aws_route53_zone.hosted_zone[each.value].name_servers))

    content {
      name = name_server.value
    }
  }
}

data "aws_route53_zone" "hosted_zone" {
  for_each = toset(var.domains)

  name         = each.value
  private_zone = false
}

module "defensive_domain_records" {
  for_each = toset(var.domains)

  source = "../modules/route53/records"

  zone_id = data.aws_route53_zone.hosted_zone[each.value].zone_id

  records = [
    {
      name = each.value
      type = "TXT"
      ttl  = 300
      records = [
        "v=spf1 -all", # NULL SPF
      ]
    },
    {
      name = each.value
      type = "CAA"
      ttl  = 300
      records = [
        "0 iodef \"mailto:certificates@digital.justice.gov.uk\"",
        "0 issue \";\""
      ]
    },
    {
      name = each.value
      type = "MX"
      ttl  = 300
      records = [
        "0 ."
      ]
    },
    {
      name = "_dmarc.${each.value}"
      type = "TXT"
      ttl  = 300
      records = [
        "v=DMARC1;p=reject;rua=mailto:dmarc-rua@dmarc.service.gov.uk;" # DMARC reject policy
      ]
    },
    {
      name = "*._domainkey.${each.value}"
      type = "TXT"
      ttl  = 300
      records = [
        "v=DKIM1; p=" # Wildcard DKIM key
      ]
    }
  ]
}
