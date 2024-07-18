provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.21"
  subnets         = ["subnet-0123456789abcdef0", "subnet-abcdef0123456789"]
  vpc_id          = "vpc-0123456789abcdef0"

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }
}

output "cluster_id" {
  value = module.eks.cluster_id
}

output "kubeconfig" {
  value = module.eks.kubeconfig
}

output "config_map_aws_auth" {
  value = module.eks.config_map_aws_auth
}
