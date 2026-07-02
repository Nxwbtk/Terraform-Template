variable "vpc_id" {
  type        = string
  description = "VPC ID for the Network Firewall"
}

variable "firewall_subnet_ids" {
  type        = list(string)
  description = "Subnets for deployment of the Network Firewall"
}

variable "firewall_name" {
  type    = string
  default = "inspection-firewall"
}

variable "firewall_policy_name" {
  type    = string
  default = "inspection-firewall-policy"
}

variable "firewall_mode" {
  type        = string
  default     = "STATEFUL"
  description = "Firewall mode: STATEFUL or STATELESS"
}

variable "stateful_capacity" {
  type    = number
  default = 100
}

variable "stateless_capacity" {
  type    = number
  default = 100
}

variable "stateful_rules_string" {
  type        = string
  default     = <<RULES
pass tcp 0.0.0.0/0 0.0.0.0/0
RULES
  description = "Stateful firewall rules in Suricata syntax"
}

variable "stateless_rules" {
  type = list(object({
    priority = number
    rule_definition = object({
      actions = list(string)
      match_attributes = optional(list(object({
        sources = optional(list(object({
          address_definition = string
        })))
        destinations = optional(list(object({
          address_definition = string
        })))
        source_port = optional(list(object({
          from_port = number
          to_port   = optional(number)
        })))
        destination_port = optional(list(object({
          from_port = number
          to_port   = optional(number)
        })))
        protocols = optional(list(number))
      })))
    })
  }))
  default = [
    {
      priority = 1
      rule_definition = {
        actions = ["aws:pass"]
        match_attributes = [
          {
            sources = [
              {
                address_definition = "10.0.0.0/16"
              }
            ]
            destinations = [
              {
                address_definition = "0.0.0.0/0"
              }
            ]
            protocols = [6]
          }
        ]
      }
    }
  ]
  description = "List of stateless firewall rules"
}

variable "stateless_default_actions" {
  type    = list(string)
  default = ["aws:forward_to_sfe"]
}

variable "stateless_fragment_default_actions" {
  type    = list(string)
  default = ["aws:forward_to_sfe"]
}

variable "stateless_rule_group_priority" {
  type        = number
  default     = 100
  description = "Priority of the stateless rule group reference in the firewall policy"
}
