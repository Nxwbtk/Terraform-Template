output "association_id" {
  description = "The ID of the Transit Gateway route table association."
  value       = aws_ec2_transit_gateway_route_table_association.main.id
}
