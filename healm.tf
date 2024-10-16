resource "helm_release" "kubecost" {
  name       = "kubecost"
  repository = "https://charts.kubecost.com"
  chart      = "kubecost"
  version    = "latest"

  set {
    name  = "kubecostImage.image"
    value = var.kubecost_image
  }

  values = [
    file("values.yaml")
  ]
}
