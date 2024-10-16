output "kubecost_url" {
  description = "URL de acesso ao Kubecost."
  value       = "http://kubecost.${var.namespace}.svc.cluster.local"
}

output "kubecost_status" {
  description = "Status da instalação do Kubecost."
  value       = module.kubecost_helm.status
}
