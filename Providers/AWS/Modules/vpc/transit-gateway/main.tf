resource "aws_ec2_transit_gateway" "main" {
  description = "Central Transit Gateway"
  tags = merge(var.tags, {
    Name = var.tgw_name
  })
}
