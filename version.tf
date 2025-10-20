terraform {
  required_version = ">= 1.3"

  required_providers {
    # The standard AWS provider is used for general AWS interactions.
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    # The AWS Cloud Control (awscc) provider is specifically used to
    # interact with resources supported by the AWS Cloud Control API,
    # including the Control Tower Landing Zone.
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-7"
}

provider "awscc" {
  region = "ap-southeast-7"
}
