variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created."
  type        = string

}

variable "tags" {
  type    = map(string)
  default = {}
}

