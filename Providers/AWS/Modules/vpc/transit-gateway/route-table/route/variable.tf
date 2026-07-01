variable "destination_cidr_block" {
  description = "The CIDR block used for destination matches. Routing decisions are based on the most specific match."
  type        = string
}

variable "tgw_attachment_id" {
  description = "The ID of the TGW attachment."
  type        = string
}

variable "tgw_route_table_id" {
  description = "The ID of the TGW route table."
  type        = string
}
