output "eks_role_arn" {
  description = "Control plane role ARN"
  value       = aws_iam_role.eks.arn
}

output "node_role_arn" {
  description = "Worker node role ARN"
  value       = aws_iam_role.node.arn
}