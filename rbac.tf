resource "kubernetes_cluster_role" "kubecost" {
  metadata {
    name = "kubecost-role"
  }
  rule {
    api_groups = [""]
    resources  = ["pods", "services", "namespaces"]
    verbs      = ["get", "list", "watch"]
  }
}

resource "kubernetes_cluster_role_binding" "kubecost" {
  metadata {
    name = "kubecost-role-binding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = kubernetes_cluster_role.kubecost.metadata[0].name
  }
  subject {
    kind      = "ServiceAccount"
    name      = "kubecost"
    namespace = var.namespace
  }
}
