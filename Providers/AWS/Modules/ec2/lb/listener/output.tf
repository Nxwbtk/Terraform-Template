output "listener_arn" {
  description = "ARN of the listener"
  value       = aws_lb_listener.main.arn
}

output "listener_id" {
  description = "ID of the listener"
  value       = aws_lb_listener.main.id
}
