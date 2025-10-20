variable "logging_email" {
  description = "Email for loggig"
  type        = string
  sensitive   = true
}

variable "audit_email" {
  description = "Email for audit"
  type        = string
  sensitive   = true
}
