resource "aws_nat_gateway" "main" {
  subnet_id     = var.subnet_id
  allocation_id = var.eip_id
  tags          = var.tags
}
