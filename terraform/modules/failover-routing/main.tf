resource "aws_route53_record" "primary" {
  zone_id = var.zone_id
  name    = var.name
  type    = "A"
  ttl     = var.ttl
  records = var.primary_records

  health_check_id = var.primary_health_check_id
  set_identifier  = var.primary_identifier

  failover_routing_policy {
    type = "PRIMARY"
  }
}

resource "aws_route53_record" "secondary" {
  zone_id = var.zone_id
  name    = var.name
  type    = "A"
  ttl     = var.ttl
  records = var.secondary_records

  health_check_id = var.secondary_health_check_id
  set_identifier  = var.secondary_identifier

  failover_routing_policy {
    type = "SECONDARY"
  }
}
