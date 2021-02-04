resource "digitalocean_kubernetes_cluster" "skynet" {
  name    = "skynet"
  region  = "nyc3"
  version = "1.19.6-do.0"
  tags    = ["DEV"]

  node_pool {
    name       = "pool-skynet"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}

resource "kubernetes_secret" "regcred" {
  metadata {
    name = "regcred"
  }

  data = {
    ".dockerconfigjson" = <<EOF
    {
      "auths": {
         "${var.registry-host}": {
           "auth": "${base64encode("${var.registry-username}:${var.registry-password}")}"
         }
      }
    }
EOF
  }
 
  type = "kubernetes.io/dockerconfigjson"
}
