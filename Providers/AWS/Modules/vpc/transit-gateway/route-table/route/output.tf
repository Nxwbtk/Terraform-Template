output "route_id" {
  description = "The ID of the transit gateway route"
  value       = aws_ec2_transit_gateway_route.main.id
}
