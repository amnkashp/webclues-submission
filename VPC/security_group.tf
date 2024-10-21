#configuring the Security Group


resource "aws_security_group" "security_group" {
    name = "sg_1"
    description = "custom security group"
    vpc_id = aws_vpc.vpc.id

    # for multiple port enable
    dynamic "ingress"{
        for_each = var.ports #[22,80,443,3000]
            iterator = port 
        content {
          from_port = port.value
          to_port = port.value
          protocol = "tcp" 
          cidr_blocks = ["0.0.0.0/0"]
        }
    
    } 
      

    ingress{
        from_port = "-1"
        to_port = "-1"
        protocol = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }    
  
}