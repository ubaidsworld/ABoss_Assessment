module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

module "iam" {
  source       = "./modules/iam"
  cluster_name = var.cluster_name
}

module "eks" {
  source         = "./modules/eks"
  cluster_name   = var.cluster_name
  subnet_ids     = module.vpc.public_subnets
  vpc_id         = module.vpc.vpc_id
  eks_role_arn   = module.iam.eks_role_arn
  node_role_arn  = module.iam.node_role_arn
}