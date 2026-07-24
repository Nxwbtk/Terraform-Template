variable "target_group_name" {
  description = "Name of the target group"
  type        = string
}

variable "port" {
  description = "Port for the target group"
  type        = number
  default     = 80
}

variable "protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = "HTTP"
}

variable "vpc_id" {
  description = "VPC ID where the target group is created"
  type        = string
}

variable "target_type" {
  description = "Type of target that you must specify when registering targets with this target group"
  type        = string
  default     = "ip"
}

variable "target_ips" {
  description = "List of IPs to register with the target group"
  type        = list(string)
  default     = []
}

variable "health_check_path" {
  description = "Destination for the health check request"
  type        = string
  default     = "/"
}

variable "health_check_port" {
  description = "Port to use to connect with the target for health checking"
  type        = string
  default     = "traffic-port"
}

variable "health_check_protocol" {
  description = "Protocol to use to connect with the target for health checking"
  type        = string
  default     = "HTTP"
}

variable "health_check_interval" {
  description = "Approximate amount of time, in seconds, between health checks of an individual target"
  type        = number
  default     = 30
}

variable "health_check_timeout" {
  description = "Amount of time, in seconds, during which no response means a failed health check"
  type        = number
  default     = 5
}

variable "health_check_healthy_threshold" {
  description = "Number of consecutive health checks successes required before considering an unhealthy target healthy"
  type        = number
  default     = 3
}

variable "health_check_unhealthy_threshold" {
  description = "Number of consecutive health check failures required before considering the target unhealthy"
  type        = number
  default     = 3
}
