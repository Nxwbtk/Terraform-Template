resource "aws_vpn_connection" "main" {
  customer_gateway_id = var.customer_gateway_id
  type                = var.type

  # Attach to either Transit Gateway or Virtual Private Gateway (mutually exclusive)
  transit_gateway_id = var.transit_gateway_id
  vpn_gateway_id     = var.vpn_gateway_id

  static_routes_only = var.static_routes_only

  # Network CIDRs
  local_ipv4_network_cidr  = var.local_ipv4_network_cidr
  remote_ipv4_network_cidr = var.remote_ipv4_network_cidr

  # Tunnel 1 Configuration
  tunnel1_preshared_key = var.tunnel1_preshared_key
  tunnel1_inside_cidr   = var.tunnel1_inside_cidr
  tunnel1_ike_versions  = var.tunnel1_ike_versions

  # Tunnel 2 Configuration
  tunnel2_preshared_key = var.tunnel2_preshared_key
  tunnel2_inside_cidr   = var.tunnel2_inside_cidr
  tunnel2_ike_versions  = var.tunnel2_ike_versions

  tags = {
    Name = var.name
  }
}

# Static routes (only for VGW-based VPN, NOT TGW-based)
# When using TGW, static routes must be added via TGW Route Tables instead
resource "aws_vpn_connection_route" "main" {
  for_each = var.transit_gateway_id == null && var.static_routes_only ? toset(var.static_routes) : toset([])

  vpn_connection_id      = aws_vpn_connection.main.id
  destination_cidr_block = each.value
}
