variable "tgw_id" {
  description = "The ID of the Transit Gateway"
  type        = string
}

variable "tgw_route_table_name" {
  description = "Name of transit gateway route table"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
