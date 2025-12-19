variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "subnet_id" {
  type = string
}

variable "is_public" {
  description = "Whether to associate a public IP address with the instance."
  type        = bool
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs to associate with the instance."
  type        = list(string)
  default     = []

}

variable "user_data" {
  description = "User data script to execute on instance launch."
  type        = string
  default     = ""
}
