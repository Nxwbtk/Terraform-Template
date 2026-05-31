resource "digitalocean_vpc_nat_gateway" "this" {
  name   = var.nat_name
  type   = var.nat_type
  region = var.region
  size   = var.size
  vpcs {
    vpc_uuid = var.vpc_id
  }
  udp_timeout_seconds  = var.udp_timeout
  icmp_timeout_seconds = var.icmp_timeout
  tcp_timeout_seconds  = var.tcp_timeout
}
