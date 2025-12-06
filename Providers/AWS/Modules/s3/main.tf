resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  tags   = var.tags
  lifecycle {
    prevent_destroy = var.prevent_destroy
  }
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = var.versioning_enabled
  }
}

resource "aws_s3_bucket_acl" "main" {
  bucket = aws_s3_bucket.main.id
  acl    = var.acl
}
