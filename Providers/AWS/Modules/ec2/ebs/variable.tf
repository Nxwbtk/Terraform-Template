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

variable "ebs_volume_type" {
  type    = string
  default = "gp3" # Optional: Set a sensible default
  validation {
    condition = contains([
      "standard",
      "io1",
      "io2",
      "gp2",
      "gp3",
      "sc1",
      "st1"
    ], var.ebs_volume_type)
    error_message = "ERROR: The EBS volume type must be one of: standard, io1, io2, gp2, gp3, sc1, or st1."
  }
}

variable "instance_id" {
  type = string
}
