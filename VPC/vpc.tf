resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr #"172.16.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpctf"
  }
}