resource "aws_route53_zone" "this" {
  name              = var.name
  comment           = var.description
  delegation_set_id = var.delegation_set_id
  force_destroy     = var.force_destroy
  tags              = var.tags
}
