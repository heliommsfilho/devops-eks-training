output "role_arn" {
  value = aws_iam_role.eks-cluster-role.arn
  description = "The name of the role"
}