output "target_group_arn" {
  description = "ARN of the Target Group"
  value       = aws_lb_target_group.main.arn
}

output "target_group_id" {
  description = "ID of the Target Group"
  value       = aws_lb_target_group.main.id
}
