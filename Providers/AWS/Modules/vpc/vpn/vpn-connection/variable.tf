# ==============================================================================
# Required Variables
# ==============================================================================

variable "customer_gateway_id" {
  description = "The ID of the Customer Gateway"
  type        = string
}

variable "name" {
  description = "Name tag for the VPN Connection"
  type        = string
}

# ==============================================================================
# Gateway Attachment (one of these must be provided)
# ==============================================================================

variable "transit_gateway_id" {
  description = "The ID of the Transit Gateway to attach to (mutually exclusive with vpn_gateway_id)"
  type        = string
  default     = null
}

variable "vpn_gateway_id" {
  description = "The ID of the Virtual Private Gateway to attach to (mutually exclusive with transit_gateway_id)"
  type        = string
  default     = null
}

# ==============================================================================
# VPN Connection Settings
# ==============================================================================

variable "type" {
  description = "The type of VPN connection"
  type        = string
  default     = "ipsec.1"
}

variable "static_routes_only" {
  description = "Whether the VPN connection uses static routes exclusively. If false, BGP is used"
  type        = bool
  default     = true
}

variable "static_routes" {
  description = "List of CIDR blocks for static routes (only used when static_routes_only = true)"
  type        = list(string)
  default     = []
}

# ==============================================================================
# Network CIDRs
# ==============================================================================

variable "local_ipv4_network_cidr" {
  description = "The IPv4 CIDR on the AWS side of the VPN connection (default: 0.0.0.0/0)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "remote_ipv4_network_cidr" {
  description = "The IPv4 CIDR on the customer (on-premises) side of the VPN connection (default: 0.0.0.0/0)"
  type        = string
  default     = "0.0.0.0/0"
}

# ==============================================================================
# Tunnel Configuration (optional - AWS auto-generates if not specified)
# ==============================================================================

variable "tunnel1_preshared_key" {
  description = "Pre-shared key for tunnel 1 (auto-generated if not specified)"
  type        = string
  default     = null
  sensitive   = true
}

variable "tunnel1_inside_cidr" {
  description = "Inside CIDR for tunnel 1 (e.g., 169.254.x.x/30, auto-assigned if not specified)"
  type        = string
  default     = null
}

variable "tunnel1_ike_versions" {
  description = "IKE versions permitted for tunnel 1 (e.g., [\"ikev2\"])"
  type        = list(string)
  default     = null
}

variable "tunnel2_preshared_key" {
  description = "Pre-shared key for tunnel 2 (auto-generated if not specified)"
  type        = string
  default     = null
  sensitive   = true
}

variable "tunnel2_inside_cidr" {
  description = "Inside CIDR for tunnel 2 (e.g., 169.254.x.x/30, auto-assigned if not specified)"
  type        = string
  default     = null
}

variable "tunnel2_ike_versions" {
  description = "IKE versions permitted for tunnel 2 (e.g., [\"ikev2\"])"
  type        = list(string)
  default     = null
}
