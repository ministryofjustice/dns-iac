resource "aws_route53_zone" "this" {
  name              = var.name
  comment           = var.description
  delegation_set_id = var.delegation_set_id
  force_destroy     = var.force_destroy
  tags              = var.tags
}

resource "aws_shield_protection" "this" {
  for_each = var.enable_shield_protection ? toset(["true"]) : toset([])

  name         = "${var.name}-shield"
  resource_arn = aws_route53_zone.this.arn
  tags         = var.tags
}
