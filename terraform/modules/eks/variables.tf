variable "eks_cluster_name" {
  type        = string
  description = "eks cluster name"
}

variable "k8s_version" {
  type        = string
  description = "kubernetes version"
  default     = "1.30"
}

variable "control_plane_subnet_ids" {
  type        = list(string)
  description = "subnet ids where the eks cluster should be created"
}

variable "eks_node_groups_subnet_ids" {
  type        = list(string)
  description = "subnet ids where the eks node groups needs to be created"
}

variable "vpc_id" {
  type        = string
  description = "vpc id where the cluster security group needs to be created"
}

variable "eks_cluster_role_name" {
  description = "Name of EKS cluster role"
  type = string
}

variable "managed_node_groups" {
  type        = map(any)
  description = "Managed Node Groups"
  default = {
    default = {
      min_size     = 1
      max_size     = 2
      desired_size = 1
      instance_types = ["t2.micro"]
      capacity_type  = "SPOT"
    }
  }
}