resource "aws_subnet" "subnet_public" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_subnet_cidr #"172.16.1.0/24"
  availability_zone = "us-east-1a"
  #map_public_ip_on_launch = true

  tags = {
    Name = "subnet_public"
  }
}
