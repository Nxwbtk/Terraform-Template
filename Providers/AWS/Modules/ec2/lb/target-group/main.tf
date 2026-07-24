resource "aws_lb_target_group" "main" {
  name        = var.target_group_name
  port        = var.port
  protocol    = var.protocol
  vpc_id      = var.vpc_id
  target_type = var.target_type

  health_check {
    path                = var.health_check_path
    port                = var.health_check_port
    protocol            = var.health_check_protocol
    interval            = var.health_check_interval
    timeout             = var.health_check_timeout
    healthy_threshold   = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
  }
}

resource "aws_lb_target_group_attachment" "main" {
  for_each         = toset(var.target_ips)
  target_group_arn = aws_lb_target_group.main.arn
  target_id        = each.key
  port             = var.port
}
