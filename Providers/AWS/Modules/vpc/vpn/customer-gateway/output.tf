output "id" {
  description = "The ID of the customer gateway"
  value       = aws_customer_gateway.main.id
}

output "arn" {
  description = "The ARN of the customer gateway"
  value       = aws_customer_gateway.main.arn
}

output "bgp_asn" {
  description = "The BGP ASN of the customer gateway"
  value       = aws_customer_gateway.main.bgp_asn
}

output "ip_address" {
  description = "The IP address of the customer gateway"
  value       = aws_customer_gateway.main.ip_address
}
