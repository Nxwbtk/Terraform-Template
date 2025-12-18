output "lb_type" {
  description = "Load balancer type (application or network)"
  value       = aws_lb.this.load_balancer_type
}
output "security_group_ids" {
  description = "Security group IDs attached to ALB (null for NLB)"
  value       = aws_lb.this.security_groups
}
output "allowed_cidr_ipv4" {
  description = "CIDR to allow traffic from NLB (null for ALB)"
  value       = var.lb_type == "network" ? var.vpc_cidr : null
}
