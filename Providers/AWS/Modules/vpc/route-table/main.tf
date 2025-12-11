resource "aws_route_table" "main" {
  vpc_id = var.vpc_id
  tags   = var.tags
}

resource "aws_route_table_association" "main" {
  route_table_id = aws_route_table.main.id
  for_each       = var.subnet_id
  subnet_id      = each.value
}

resource "aws_route" "main" {
  count                  = var.route_type == "public" || var.route_type == "private" ? 1 : 0
  route_table_id         = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"

  gateway_id     = var.route_type == "public" ? var.igw_id : null
  nat_gateway_id = var.route_type == "private" ? var.nat_gateway_id : null
}
