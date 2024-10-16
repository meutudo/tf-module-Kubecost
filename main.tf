resource "kubernetes_namespace" "kubecost" {
  metadata {
    name = var.namespace
  }
}

module "kubecost_helm" {
  source  = "terraform-helm"
  name    = "kubecost"
  namespace = kubernetes_namespace.kubecost.metadata[0].name
  chart   = "kubecost"
  repository = "https://charts.kubecost.com"
  
  set {
    name  = "kubecostClusterName"
    value = var.cluster_name
  }
  set {
    name  = "resources.requests.cpu"
    value = var.cpu_request
  }
  set {
    name  = "resources.requests.memory"
    value = var.memory_request
  }
}
