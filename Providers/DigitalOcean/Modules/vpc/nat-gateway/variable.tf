variable "nat_name" {
  type = string
}

variable "nat_type" {
  type    = string
  default = "PUBLIC"
}

variable "region" {
  type = string
}

variable "size" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "udp_timeout" {
  type = number
}

variable "icmp_timeout" {
  type = number
}

variable "tcp_timeout" {
  type = number
}
