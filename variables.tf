variable "namespace" {
  description = "O namespace onde o Kubecost será instalado."
  type        = string
  default     = "kubecost"
}

variable "cluster_name" {
  description = "Nome do cluster Kubernetes."
  type        = string
}

variable "cpu_request" {
  description = "Requisição de CPU para o Kubecost."
  type        = string
  default     = "500m"
}

variable "memory_request" {
  description = "Requisição de memória para o Kubecost."
  type        = string
  default     = "512Mi"
}
