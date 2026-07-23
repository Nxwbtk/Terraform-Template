variable "name" {
  description = "The name of the resource share"
  type        = string
}

variable "allow_external_principals" {
  description = "Indicates whether principals outside your organization can be associated with a resource share"
  type        = bool
  default     = false
}

variable "resource_arns" {
  description = "A list of Amazon Resource Names (ARNs) of the resources to associate with the RAM share"
  type        = list(string)
  default     = []
}

variable "principal_arns" {
  description = "A list of principals to associate with the resource share (Account IDs, OU ARNs, or Organization ARN)"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
