resource "digitalocean_container_registry" "main" {
  name                   = var.registry_name
  subscription_tier_slug = var.registry_tier
  region                 = var.region
}

resource "digitalocean_container_registry_docker_credentials" "main" {
  registry_name = digitalocean_container_registry.main.name
  write         = true
}
