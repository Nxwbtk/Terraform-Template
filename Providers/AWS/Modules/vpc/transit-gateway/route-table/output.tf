output "route_table_id" {
  description = "The ID of the transit gateway route table"
  value       = aws_ec2_transit_gateway_route_table.main.id
}
