
output "cluster_id" {
  description = "DOKS cluster ID"
  value       = digitalocean_kubernetes_cluster.main.id
}

output "cluster_endpoint" {
  description = "Kubernetes API server endpoint"
  value       = digitalocean_kubernetes_cluster.main.endpoint
}

output "cluster_version" {
  description = "Kubernetes version running on the cluster"
  value       = digitalocean_kubernetes_cluster.main.version
}

output "kubeconfig" {
  description = "Raw kubeconfig — pipe to a file or use KUBE_CONFIG_DATA"
  value       = digitalocean_kubernetes_cluster.main.kube_config[0].raw_config
  sensitive   = true
}

output "registry_endpoint" {
  description = "Container registry endpoint"
  value       = digitalocean_container_registry.main.endpoint
}

output "registry_server_url" {
  description = "Docker server URL for the registry"
  value       = digitalocean_container_registry.main.server_url
}
