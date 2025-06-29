resource "helm_release" "nginx" {
  name       = "nginx"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  version    = "15.12.0"

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "service.nodePorts.http"
    value = "30080"
  }

  set {
    name  = "replicaCount"
    value = "2"
  }
}

resource "helm_release" "nginx-test" {
  name       = "my-nginx"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  version    = "9.3.4"

  values = [
    yamlencode({
      service = {
        type = "NodePort"
        port = 80
      }
    })
  ]
}