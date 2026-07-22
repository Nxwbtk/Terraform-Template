output "tgw_attachment_id" {
  description = "The ID of the Transit Gateway VPC attachment."
  value       = aws_ec2_transit_gateway_vpc_attachment.main.id
}
