variable "registry_name" {
  description = "The name of the registry to attach to the cluster."
  type        = string

}

variable "registry_tier" {
  description = "The subscription tier for the container registry (e.g., 'basic', 'pro')."
  type        = string
  default     = "basic"
}

variable "region" {
  description = "The region where the registry will be created."
  type        = string
}
