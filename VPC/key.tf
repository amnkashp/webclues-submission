resource "aws_key_pair" "instance_key" {
  key_name   = "key"
  public_key = file("${path.module}/id_rsa.pub")
}