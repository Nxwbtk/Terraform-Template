resource "aws_iam_role" "this" {
  name               = var.iam_role_name
  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_role_policy_attachment" "this" {
  for_each   = var.policy_arns
  policy_arn = each.value
  role       = aws_iam_role.this.name
}
