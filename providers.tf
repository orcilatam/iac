terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

provider "digitalocean" {
  token = var.token
}

provider "kubernetes" {
  load_config_file = false
  host  = digitalocean_kubernetes_cluster.skynet.endpoint
  token = digitalocean_kubernetes_cluster.skynet.kube_config[0].token
  cluster_ca_certificate = base64decode(
    digitalocean_kubernetes_cluster.skynet.kube_config[0].cluster_ca_certificate
  )
}
