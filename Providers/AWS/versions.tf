terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.52"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 0.6"
    }
  }
  required_version = ">= 1.3"
}
