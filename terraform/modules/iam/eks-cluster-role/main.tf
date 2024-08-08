# Create a role for EKS cluster
resource "aws_iam_role" "eks-cluster-role" {
  name               = var.cluster_role_name
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": [
            "eks.amazonaws.com"
          ]
        },
        "Action": "sts:AssumeRole"
      }
    ]
  })
}

# Attach the AmazonEKSClusterPolicy to the role
resource "aws_iam_role_policy_attachment" "eks-cluster-role-policy-attachment" {
  role       = aws_iam_role.eks-cluster-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}