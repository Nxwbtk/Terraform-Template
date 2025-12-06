module "vpc" {
  source         = "../../Providers/AWS/Modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
  vpc_name       = "my-vpc"
}
