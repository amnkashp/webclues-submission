# configuring public route table
resource "aws_route_table" "route_public" {
  vpc_id = aws_vpc.vpc.id
  

  route {
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
   }

  tags = {
    Name = "public_route_table"
  }
}

resource "aws_route_table_association" "subnet_association" {
  subnet_id      = aws_subnet.subnet_public.id
  route_table_id = aws_route_table.route_public.id
}


