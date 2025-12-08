variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created."
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with the route table."
  type        = string
}

variable "route_type" {
  description = "public | private | none"
  type        = string
}

variable "igw_id" {
  type    = string
  default = null
}

variable "nat_gateway_id" {
  type    = string
  default = null
}

