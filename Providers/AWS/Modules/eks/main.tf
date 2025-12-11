resource "aws_eks_cluster" "this" {
  name = var.cluster_name
  access_config {
    authentication_mode = "API"
  }

  role_arn = var.cluster_iam_role_arn
  version  = "1.34"

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  tags = var.cluster_tags
}

resource "aws_eks_node_group" "default" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "${var.cluster_name}-nodes"
  node_role_arn   = var.node_iam_role_arn
  subnet_ids      = var.node_group_subnet_ids

  instance_types = var.worker_node_type # <— your specific node size

  scaling_config {
    desired_size = var.scaling_config.desired_size
    min_size     = var.scaling_config.min_size
    max_size     = var.scaling_config.max_size
  }

  update_config {
    max_unavailable = var.update_config.max_unavailable
  }

  tags = var.node_group_tags
}
