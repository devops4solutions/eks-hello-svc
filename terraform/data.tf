data "aws_eks_cluster" "cluster" {
  name = "eks-${var.environment}"  # Change this to your EKS cluster name
}

data "aws_eks_cluster_auth" "cluster" {
  name = data.aws_eks_cluster.cluster.name
}