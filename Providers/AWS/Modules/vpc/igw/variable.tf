variable "vpc_id" {
  description = "The ID of the VPC to attach the Internet Gateway to."
  type        = string
}

variable "attach_to_vpc" {
  description = "Whether to attach the IGW to the VPC. Set to false to create IGW without attachment (e.g., for later attachment or cross-VPC migration)."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the Internet Gateway."
  type        = map(string)
  default     = {}
}
