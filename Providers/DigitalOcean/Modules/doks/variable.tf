variable "registry_name" {
  description = "The name of the registry to attach to the cluster."
  type        = string

}

variable "cluster_name" {
  type        = string
  description = "The name of K8s cluster"
}

variable "k8s_version" {
  description = "Kubernetes version slug (run: doctl kubernetes options versions)"
  type        = string
  default     = "1.32"
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "sgp1"
}

variable "node_size" {
  description = "Droplet size for cluster nodes"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 2
}
