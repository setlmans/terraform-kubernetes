output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_id
}

output "kubeconfig" {
  description = "Kubeconfig file content to access EKS cluster"
  value       = module.eks.kubeconfig
}
