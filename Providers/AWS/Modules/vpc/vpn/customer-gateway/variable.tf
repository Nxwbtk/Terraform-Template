variable "bgp_asn" {
  description = "BGP ASN"
  type        = number
}

variable "public_ip" {
  description = "Public IP of the customer gateway"
  type        = string
}

variable "name" {
  description = "Name of the customer gateway"
  type        = string
}

variable "type" {
  description = "Type of the customer gateway"
  type        = string
  default     = "ipsec.1"
}

