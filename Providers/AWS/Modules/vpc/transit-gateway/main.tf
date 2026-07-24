resource "aws_ec2_transit_gateway" "main" {
  description                      = "Central Transit Gateway"
  default_route_table_association  = var.default_route_table_association
  default_route_table_propagation  = var.default_route_table_propagation
  auto_accept_shared_attachments   = var.auto_accept_shared_attachments
  tags = merge(var.tags, {
    Name = var.tgw_name
  })
}
