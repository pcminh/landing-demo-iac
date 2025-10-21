# EKS
# See - https://github.com/terraform-aws-modules/terraform-aws-eks/tree/master/examples

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.6.0"

  name = var.eks_config.cluster_name
  kubernetes_version = "1.33"

  endpoint_public_access = true
  enable_cluster_creator_admin_permissions = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  compute_config = {
    enabled = true
    node_pools = ["general-purpose"]
  }

  tags = {
    Environment = var.env
    Terraform = true
  }
}