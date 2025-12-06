variable "vpc_cidr_block" {
  type        = string
  description = "CIDR Block of VPC"
}

variable "vpc_name" {
  type        = string
  description = "vpc name"
}

variable "enable_dns_support" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable DNS support in the VPC. Default is true."
}

variable "enable_dns_hostnames" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Default is true."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource."
  default     = {}
}
