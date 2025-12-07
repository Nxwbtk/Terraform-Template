variable "region" {
  type = string
}

variable "profile" {
  type    = string
  default = null
}

variable "access_key" {
  type      = string
  default   = null
  sensitive = true
}

variable "secret_key" {
  type      = string
  default   = null
  sensitive = true
}

variable "default_tags" {
  type    = map(string)
  default = {}
}
