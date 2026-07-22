variable "tgw_attachment_id" {
  description = "The ID of the Transit Gateway attachment to associate."
  type        = string
}

variable "tgw_route_table_id" {
  description = "The ID of the Transit Gateway route table to associate with."
  type        = string
}
