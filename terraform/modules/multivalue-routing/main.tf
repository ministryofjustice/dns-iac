resource "aws_route53_record" "multivalue" {
  for_each = {
    for value in var.multivalue_answers :
    value.set_identifier => value
  }

  zone_id = var.zone_id
  name    = var.name
  type    = "A"
  ttl     = each.value.ttl
  records = each.value.records

  health_check_id = each.value.health_check_id
  set_identifier  = each.value.set_identifier

  multivalue_answer_routing_policy = true
}
