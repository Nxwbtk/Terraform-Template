variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "cidr block of subnet"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_az" {
  description = "The availability zone of the subnet"
  type        = string
}
