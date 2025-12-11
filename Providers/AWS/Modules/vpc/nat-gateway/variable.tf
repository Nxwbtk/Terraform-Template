variable "subnet_id" {
  description = "A list of subnet IDs in which to create the NAT Gateways."
  type        = string

}

variable "tags" {
  type = map(string)
}

variable "eip_id" {
  description = "The allocation ID of the Elastic IP to associate with the NAT Gateway."
  type        = string

}
