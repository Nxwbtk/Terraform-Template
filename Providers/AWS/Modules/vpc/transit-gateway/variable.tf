variable "tgw_name" {
  description = "The name of the Transit Gateway"
  type        = string
}

variable "default_route_table_association" {
  description = "Whether to auto-associate attachments with the default route table. Use 'disable' for Hub-Spoke architecture."
  type        = string
  default     = "disable"
}

variable "default_route_table_propagation" {
  description = "Whether to auto-propagate routes to the default route table. Use 'disable' for Hub-Spoke architecture."
  type        = string
  default     = "disable"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
