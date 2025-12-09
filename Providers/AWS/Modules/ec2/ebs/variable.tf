variable "availability_zone" {
  type = string
}

variable "size" {
  type = number
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "type" {
  type = "standard" || "io1" || "io2" || "gp2" || "gp3" || "sc1" || "st1"
}

variable "instance_id" {
  type = string
}
