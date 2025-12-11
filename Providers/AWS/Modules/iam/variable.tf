variable "iam_role_name" {
  type        = string
  description = "Name of the IAM Role"

}

variable "assume_role_policy" {
  type        = string
  description = "The policy that grants an entity permission to assume the role"
}

variable "policy_arns" {
  type        = map(string)
  description = "A map of policy ARNs to attach to the IAM Role"
  default     = {}
}
