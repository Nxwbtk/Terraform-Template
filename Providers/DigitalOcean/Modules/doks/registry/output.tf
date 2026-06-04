

output "registry_endpoint" {
  description = "Container registry endpoint"
  value       = digitalocean_container_registry.main.endpoint
}

output "registry_server_url" {
  description = "Docker server URL for the registry"
  value       = digitalocean_container_registry.main.server_url
}
