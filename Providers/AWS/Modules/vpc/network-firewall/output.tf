output "firewall_arn" {
  value = aws_networkfirewall_firewall.inspection.arn
}

output "firewall_name" {
  value = aws_networkfirewall_firewall.inspection.name
}

output "firewall_subnet_mapping" {
  value = aws_networkfirewall_firewall.inspection.subnet_mapping
}
