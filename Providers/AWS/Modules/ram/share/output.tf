output "ram_share_id" {
  description = "The Amazon Resource Name (ARN) of the resource share"
  value       = aws_ram_resource_share.main.id
}

output "ram_share_arn" {
  description = "The Amazon Resource Name (ARN) of the resource share"
  value       = aws_ram_resource_share.main.arn
}
