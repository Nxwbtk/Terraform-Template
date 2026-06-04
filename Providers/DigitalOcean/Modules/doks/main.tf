data "digitalocean_kubernetes_versions" "current" {
  version_prefix = var.k8s_version
}

resource "digitalocean_kubernetes_cluster" "main" {
  name    = var.cluster_name
  region  = var.region
  version = data.digitalocean_kubernetes_versions.current.latest_version

  node_pool {
    name       = "${var.cluster_name}-pool"
    size       = var.node_size
    node_count = var.node_count

    labels = {
      managed-by = "terraform"
    }
  }

  lifecycle {
    ignore_changes = [
      # Ignore auto-patched versions to avoid forced re-creation
      version,
    ]
  }
}

resource "digitalocean_kubernetes_cluster_attachment" "registry" {
  cluster_uuid  = digitalocean_kubernetes_cluster.main.id
  registry_name = var.registry_name
}
