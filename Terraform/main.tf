provider "aws"{
	region = "ap-south-1"
	profile = "default"
}

resource "aws_vpc" "VPC" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "192.168.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv4_ipam_pool_id                    = null
  ipv4_netmask_length                  = null
  ipv6_cidr_block                      = null
  ipv6_cidr_block_network_border_group = null
  ipv6_ipam_pool_id                    = null
  ipv6_netmask_length                  = 0
  region                               = "ap-south-1"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/VPC"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/VPC"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
  }
}

resource "aws_subnet" "subnet_A_public" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1a"
  availability_zone_id                           = "aps1-az1"
  cidr_block                                     = "192.168.32.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = true
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-south-1"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPublicAPSOUTH1A"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPublicAPSOUTH1A"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = "vpc-0f042a161f38a26fc"
}

resource "aws_subnet" "subnet_A_private" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1a"
  availability_zone_id                           = "aps1-az1"
  cidr_block                                     = "192.168.128.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-south-1"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPrivateAPSOUTH1A"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPrivateAPSOUTH1A"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = "vpc-0f042a161f38a26fc"
}

resource "aws_subnet" "subnet_B_public" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1b"
  availability_zone_id                           = "aps1-az3"
  cidr_block                                     = "192.168.0.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = true
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-south-1"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPublicAPSOUTH1B"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPublicAPSOUTH1B"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = "vpc-0f042a161f38a26fc"
}

resource "aws_subnet" "subnet_B_private" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1b"
  availability_zone_id                           = "aps1-az3"
  cidr_block                                     = "192.168.96.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-south-1"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPrivateAPSOUTH1B"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPrivateAPSOUTH1B"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = "vpc-0f042a161f38a26fc"
}

resource "aws_subnet" "subnet_C_public" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1c"
  availability_zone_id                           = "aps1-az2"
  cidr_block                                     = "192.168.64.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = true
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-south-1"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPublicAPSOUTH1C"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPublicAPSOUTH1C"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = "vpc-0f042a161f38a26fc"
}

resource "aws_subnet" "subnet_C_private" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "ap-south-1c"
  availability_zone_id                           = "aps1-az2"
  cidr_block                                     = "192.168.160.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-south-1"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPrivateAPSOUTH1C"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/SubnetPrivateAPSOUTH1C"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = "vpc-0f042a161f38a26fc"
}

resource "aws_eks_cluster" "my_cluster" {
  bootstrap_self_managed_addons = false
  enabled_cluster_log_types     = []
  force_update_version          = null
  name                          = "aboss-demo-eks-cluster"
  region                        = "ap-south-1"
  role_arn                      = "arn:aws:iam::023335661171:role/eksctl-aboss-demo-eks-cluster-cluster-ServiceRole-EBOioYuzwXiI"
  tags = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/ControlPlane"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
  }
  tags_all = {
    Name                                          = "eksctl-aboss-demo-eks-cluster-cluster/ControlPlane"
    "alpha.eksctl.io/cluster-name"                = "aboss-demo-eks-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "false"
    "alpha.eksctl.io/eksctl-version"              = "0.187.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "aboss-demo-eks-cluster"
  }
  version = jsonencode(1.3)
  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }
  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
    elastic_load_balancing {
      enabled = false
    }
  }
  upgrade_policy {
    support_type = "EXTENDED"
  }
  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
    public_access_cidrs     = ["0.0.0.0/0"]
    security_group_ids      = ["sg-0551469c66d30b459"]
    subnet_ids              = ["subnet-009ddcfc886210f0a", "subnet-009e7d7bbe99f75da", "subnet-028365cf24978ff90", "subnet-07269fa9e5c0663af", "subnet-09ce6b99ae4b5ae68", "subnet-0a0b4bc00dc285b06"]
  }
}