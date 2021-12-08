resource "aws_route53_zone" "default" {
  name              = var.domain
  comment           = trim(join(" ", [var.description, "(Managed in Terraform)"]), " ")
  delegation_set_id = var.delegation_set_id
  tags              = var.tags

  # Safeguard from force destroying a zone
  force_destroy = false
}

resource "aws_route53_record" "default" {
  for_each = {
    for record in var.records :
    join("_", [aws_route53_zone.default.zone_id, record.name, record.type]) => record
  }

  zone_id = aws_route53_zone.default.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = lookup(each.value, "ttl", null)
  records = lookup(each.value, "records", null)

  dynamic "alias" {
    for_each = length(keys(lookup(each.value, "alias", {}))) == 0 ? [] : [true]

    content {
      name                   = each.value.alias.name
      zone_id                = each.value.alias.zone_id
      evaluate_target_health = each.value.alias.evaluate_target_health
    }
  }
}
