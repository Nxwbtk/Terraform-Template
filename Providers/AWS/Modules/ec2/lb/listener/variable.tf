variable "load_balancer_arn" {
  description = "ARN of the load balancer"
  type        = string
}

variable "port" {
  description = "Port on which the load balancer is listening"
  type        = number
  default     = 80
}

variable "protocol" {
  description = "Protocol for connections from clients to the load balancer"
  type        = string
  default     = "HTTP"
}

variable "target_group_arn" {
  description = "ARN of the default target group"
  type        = string
}
