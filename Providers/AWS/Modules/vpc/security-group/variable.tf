variable "name" {
  type        = string
  description = "Security group name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    description                  = optional(string)
    from_port                    = number
    to_port                      = number
    protocol                     = string
    cidr_ipv4                    = string
    referenced_security_group_id = optional(string)
  }))
  default = []
}

variable "egress_rules" {
  description = "List of egress rules"
  type = list(object({
    description = optional(string)
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_ipv4   = string
  }))
  default = [
    {
      from_port = 0
      to_port   = 0
      protocol  = "-1"
      cidr_ipv4 = "0.0.0.0/0"
    }
  ]
}

variable "tags" {
  type    = map(string)
  default = {}
}
