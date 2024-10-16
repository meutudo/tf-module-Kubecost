# Módulo Terraform para Kubecost

Este módulo Terraform permite a instalação e configuração do Kubecost em clusters Kubernetes.

## Uso

```hcl
module "kubecost" {
  source       = "./kubecost-terraform-module"
  namespace    = "kubecost"
  cluster_name = "my-cluster"
  cpu_request  = "500m"
  memory_request = "512Mi"
}
