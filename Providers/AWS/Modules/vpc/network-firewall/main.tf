resource "aws_networkfirewall_rule_group" "stateful" {
  count    = var.firewall_mode == "STATEFUL" ? 1 : 0
  name     = "${var.firewall_name}-stateful"
  capacity = var.stateful_capacity
  type     = "STATEFUL"
  tags     = merge(var.tags, { Name = "${var.firewall_name}-stateful" })

  rule_group {
    rules_source {
      rules_string = var.stateful_rules_string
    }
  }
}

resource "aws_networkfirewall_rule_group" "stateless" {
  count    = var.firewall_mode == "STATELESS" ? 1 : 0
  name     = "${var.firewall_name}-stateless"
  capacity = var.stateless_capacity
  type     = "STATELESS"
  tags     = merge(var.tags, { Name = "${var.firewall_name}-stateless" })

  rule_group {
    rules_source {
      stateless_rules_and_custom_actions {
        dynamic "stateless_rule" {
          for_each = var.stateless_rules
          content {
            priority = stateless_rule.value.priority

            rule_definition {
              actions = toset(stateless_rule.value.rule_definition.actions)

              match_attributes {
                dynamic "source" {
                  for_each = try(stateless_rule.value.rule_definition.match_attributes[0].sources, [])
                  content {
                    address_definition = source.value.address_definition
                  }
                }

                dynamic "destination" {
                  for_each = try(stateless_rule.value.rule_definition.match_attributes[0].destinations, [])
                  content {
                    address_definition = destination.value.address_definition
                  }
                }

                dynamic "source_port" {
                  for_each = try(stateless_rule.value.rule_definition.match_attributes[0].source_port, [])
                  content {
                    from_port = source_port.value.from_port
                    to_port   = try(source_port.value.to_port, null)
                  }
                }

                dynamic "destination_port" {
                  for_each = try(stateless_rule.value.rule_definition.match_attributes[0].destination_port, [])
                  content {
                    from_port = destination_port.value.from_port
                    to_port   = try(destination_port.value.to_port, null)
                  }
                }

                protocols = try(toset(stateless_rule.value.rule_definition.match_attributes[0].protocols), [])
              }
            }
          }
        }
      }
    }
  }
}

resource "aws_networkfirewall_firewall_policy" "inspection" {
  name = var.firewall_policy_name
  tags = merge(var.tags, { Name = var.firewall_policy_name })

  firewall_policy {
    dynamic "stateful_rule_group_reference" {
      for_each = var.firewall_mode == "STATEFUL" ? [1] : []
      content {
        resource_arn = aws_networkfirewall_rule_group.stateful[0].arn
      }
    }

    dynamic "stateless_rule_group_reference" {
      for_each = var.firewall_mode == "STATELESS" ? [1] : []
      content {
        resource_arn = aws_networkfirewall_rule_group.stateless[0].arn
        priority     = var.stateless_rule_group_priority
      }
    }

    stateless_default_actions          = var.stateless_default_actions
    stateless_fragment_default_actions = var.stateless_fragment_default_actions
  }
}

resource "aws_networkfirewall_firewall" "inspection" {
  name                = var.firewall_name
  firewall_policy_arn = aws_networkfirewall_firewall_policy.inspection.arn
  vpc_id              = var.vpc_id
  tags                = merge(var.tags, { Name = var.firewall_name })

  dynamic "subnet_mapping" {
    for_each = var.firewall_subnet_ids
    content {
      subnet_id = subnet_mapping.value
    }
  }
}
