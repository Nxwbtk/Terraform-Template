resource "aws_lb" "this" {
  name                       = var.lb_name
  internal                   = var.is_internal
  load_balancer_type         = var.lb_type
  security_groups            = var.lb_type == "application" ? var.security_groups_ids : null
  subnets                    = var.public_subnet_ids
  tags                       = var.tags
  enable_deletion_protection = var.enable_deletion_protection
}
