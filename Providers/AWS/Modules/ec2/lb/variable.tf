variable "lb_name" {
  description = "The name of the load balancer."
  type        = string
}

variable "lb_type" {
  description = "The type of load balancer. Valid values are 'application', 'network', and 'gateway'."
  type        = string
  default     = "application"
}

variable "security_groups_ids" {
  description = "A list of security group IDs to associate with the load balancer."
  type        = list(string)
  default     = []
  validation {
    condition     = var.lb_type != "application" || length(var.security_groups_ids) > 0
    error_message = "ALB requires at least one security group."
  }
}

variable "tags" {
  type = map(string)
}

variable "is_internal" {
  type    = bool
  default = false
}

variable "public_subnet_ids" {
  description = "A list of public subnet IDs to associate with the load balancer."
  type        = list(string)
  default     = []
}

variable "enable_deletion_protection" {
  type    = bool
  default = true
}

variable "vpc_cidr" {
  type = string
}
