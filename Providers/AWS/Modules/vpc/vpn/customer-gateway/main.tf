resource "aws_customer_gateway" "main" {
  bgp_asn    = var.bgp_asn
  ip_address = var.public_ip
  type       = var.type
  tags = {
    Name = var.name
  }
}
