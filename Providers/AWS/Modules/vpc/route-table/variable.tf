variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with the route table."
  type        = map(string)
}

variable "routes" {
  description = "List of route blocks to create in the route table."
  type = list(object({
    cidr_block                 = optional(string)
    ipv6_cidr_block            = optional(string)
    gateway_id                 = optional(string)
    nat_gateway_id             = optional(string)
    transit_gateway_id         = optional(string)
    vpc_peering_connection_id  = optional(string)
    vpc_endpoint_id            = optional(string)
    network_interface_id       = optional(string)
    local_gateway_id           = optional(string)
    carrier_gateway_id         = optional(string)
    egress_only_gateway_id     = optional(string)
    destination_prefix_list_id = optional(string)
  }))
  default = []
}



