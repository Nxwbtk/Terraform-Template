# ==============================================================================
# VPN Connection Outputs
# ==============================================================================

output "vpn_connection_id" {
  description = "The ID of the VPN Connection"
  value       = aws_vpn_connection.main.id
}

output "vpn_connection_arn" {
  description = "The ARN of the VPN Connection"
  value       = aws_vpn_connection.main.arn
}

output "transit_gateway_attachment_id" {
  description = "The Transit Gateway Attachment ID (only when attached to TGW)"
  value       = aws_vpn_connection.main.transit_gateway_attachment_id
}

# ==============================================================================
# Tunnel Details (for configuring on-premises router)
# ==============================================================================

output "tunnel1_address" {
  description = "The public IP address of the first VPN tunnel (AWS side)"
  value       = aws_vpn_connection.main.tunnel1_address
}

output "tunnel1_preshared_key" {
  description = "The pre-shared key of the first VPN tunnel"
  value       = aws_vpn_connection.main.tunnel1_preshared_key
  sensitive   = true
}

output "tunnel1_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway side)"
  value       = aws_vpn_connection.main.tunnel1_cgw_inside_address
}

output "tunnel1_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway side)"
  value       = aws_vpn_connection.main.tunnel1_vgw_inside_address
}

output "tunnel2_address" {
  description = "The public IP address of the second VPN tunnel (AWS side)"
  value       = aws_vpn_connection.main.tunnel2_address
}

output "tunnel2_preshared_key" {
  description = "The pre-shared key of the second VPN tunnel"
  value       = aws_vpn_connection.main.tunnel2_preshared_key
  sensitive   = true
}

output "tunnel2_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway side)"
  value       = aws_vpn_connection.main.tunnel2_cgw_inside_address
}

output "tunnel2_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway side)"
  value       = aws_vpn_connection.main.tunnel2_vgw_inside_address
}

