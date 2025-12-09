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
