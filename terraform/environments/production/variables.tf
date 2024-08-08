variable "region" {
  type        = string
  description = "AWS Region where the resources are being created"
}

variable "aws_profile" {
  type        = string
  description = "AWS profile with the credenciais to use"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC to be created"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC cidr block to be used"
  default     = "10.0.0.0/16"
}

variable "eks_cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "eks_cluster_role_name" {
  type        = string
  description = "Name of EKS cluster role"
}

variable "k8s_version" {
  type        = string
  description = "Kubernetes version"
  default     = "1.30"
}