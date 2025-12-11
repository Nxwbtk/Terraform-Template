resource "aws_nat_gateway" "this" {
  subnet_id     = var.subnet_id
  allocation_id = var.eip_id
  tags          = var.tags
}
