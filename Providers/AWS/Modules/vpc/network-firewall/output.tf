output "firewall_arn" {
  value = aws_networkfirewall_firewall.inspection.arn
}

output "firewall_name" {
  value = aws_networkfirewall_firewall.inspection.name
}

output "firewall_subnet_mapping" {
  value = aws_networkfirewall_firewall.inspection.subnet_mapping
}

output "firewall_status" {
  description = "Firewall status including sync_states with VPC endpoint IDs per AZ"
  value       = aws_networkfirewall_firewall.inspection.firewall_status
}
