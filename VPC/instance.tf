resource "aws_instance" "ec2" {
  ami = var.instance_ami     #data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = "key"
  vpc_security_group_ids = [aws_security_group.security_group.id]
  subnet_id = aws_subnet.subnet_public.id
  associate_public_ip_address = true
  
  tags = {
    Name = "Instance"
  }
}
 