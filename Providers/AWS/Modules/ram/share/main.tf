resource "aws_ram_resource_share" "main" {
  name                      = var.name
  allow_external_principals = var.allow_external_principals
  tags = merge(
    {
      "Name" = var.name
    },
    var.tags
  )
}

resource "aws_ram_resource_association" "main" {
  count              = length(var.resource_arns)
  resource_arn       = var.resource_arns[count.index]
  resource_share_arn = aws_ram_resource_share.main.arn
}

resource "aws_ram_principal_association" "main" {
  count              = length(var.principal_arns)
  principal          = var.principal_arns[count.index]
  resource_share_arn = aws_ram_resource_share.main.arn
}
