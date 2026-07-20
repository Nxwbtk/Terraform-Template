resource "aws_internet_gateway" "main" {
  tags = var.tags
}

resource "aws_internet_gateway_attachment" "main" {
  count               = var.attach_to_vpc ? 1 : 0
  internet_gateway_id = aws_internet_gateway.main.id
  vpc_id              = var.vpc_id
}
