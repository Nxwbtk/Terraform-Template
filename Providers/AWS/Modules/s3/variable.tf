variable "bucket_name" {
  type        = string
  description = "Name of the bucket"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the bucket"
}

variable "versioning_enabled" {
  type        = string
  description = "Enable versioning for the S3 bucket"
  default     = "Enabled"
}

variable "acl" {
  type        = string
  description = "The ACL to apply to the S3 bucket"
  default     = "private"
}

variable "prevent_destroy" {
  type        = bool
  default     = false
  description = "If true, prevents the S3 bucket from being destroyed"
}
