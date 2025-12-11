variable "cluster_name" {
  type        = string
  description = "EKS Cluster Name"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of Subnet IDs for the EKS Cluster"
}
variable "cluster_tags" {
  type        = map(string)
  description = "Tags to apply to the EKS Cluster"
  default     = {}
}

variable "cluster_iam_role_arn" {
  type        = string
  description = "IAM Role ARN for the EKS Cluster"

}

variable "node_iam_role_arn" {
  type        = string
  description = "IAM Role ARN for the EKS Node Group"
}

variable "worker_node_type" {
  type        = list(string)
  description = "Type of instance for worker nodes"
}

variable "scaling_config" {
  type = object({
    desired_size = number
    min_size     = number
    max_size     = number
  })
  description = "Scaling configuration for the EKS Node Group"
}
variable "update_config" {
  type = object({
    max_unavailable = number
  })
  description = "Update configuration for the EKS Node Group"
}

variable "node_group_subnet_ids" {
  type        = list(string)
  description = "List of Subnet IDs for the EKS Node Group"
}

variable "node_group_tags" {
  type        = map(string)
  description = "Tags to apply to the EKS Node Group"
  default     = {}
}
