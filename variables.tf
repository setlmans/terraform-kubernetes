variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "my-eks-cluster"
}

variable "vpc_id" {
  description = "VPC ID where EKS cluster will be created"
}

variable "subnets" {
  description = "Subnets IDs where EKS cluster will be created"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  default     = "t3.medium"
}
