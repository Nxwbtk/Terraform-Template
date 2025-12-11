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
