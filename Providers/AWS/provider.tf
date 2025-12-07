provider "aws" {
  region     = var.region
  profile    = var.profile != null ? var.profile : null
  access_key = var.profile == null ? var.access_key : null
  secret_key = var.profile == null ? var.secret_key : null
  default_tags {
    tags = var.default_tags
  }
}
