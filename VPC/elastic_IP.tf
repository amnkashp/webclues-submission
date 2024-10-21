resource "aws_eip" "elastic_ip" {
  #instance = aws_instance.web.id
  domain   = "vpc"  #use if you are using for VPC only 
}