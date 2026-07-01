resource "aws_route_table" "main" {
  vpc_id = var.vpc_id
  tags   = var.tags

  dynamic "route" {
    for_each = var.routes
    content {
      cidr_block                 = try(route.value.cidr_block, null)
      ipv6_cidr_block            = try(route.value.ipv6_cidr_block, null)
      gateway_id                 = try(route.value.gateway_id, null)
      nat_gateway_id             = try(route.value.nat_gateway_id, null)
      transit_gateway_id         = try(route.value.transit_gateway_id, null)
      vpc_peering_connection_id  = try(route.value.vpc_peering_connection_id, null)
      vpc_endpoint_id            = try(route.value.vpc_endpoint_id, null)
      network_interface_id       = try(route.value.network_interface_id, null)
      local_gateway_id           = try(route.value.local_gateway_id, null)
      carrier_gateway_id         = try(route.value.carrier_gateway_id, null)
      egress_only_gateway_id     = try(route.value.egress_only_gateway_id, null)
      destination_prefix_list_id = try(route.value.destination_prefix_list_id, null)
    }
  }
}

resource "aws_route_table_association" "main" {
  route_table_id = aws_route_table.main.id
  for_each       = var.subnet_id
  subnet_id      = each.value
  depends_on     = [aws_route_table.main]
}
