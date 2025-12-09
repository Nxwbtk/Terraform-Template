variable "engine" {
  type    = string
  default = "postgres"
}

variable "instance_class" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "allocated_storage" {
  type = number
}

variable "db_username" {
  type      = string
  sensitive = true
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
}

variable "db_name" {
  type      = string
  sensitive = true
}

variable "security_group_name" {
  type = string
}

variable "subnet_group_name" {
  type = string
}
