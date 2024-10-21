#### assinging all the variable here 


### Provider 

variable "access_Key" {
    type = string
}

variable "secret_Key" {
    type = string
}

variable "main_region" {
    type = string 
}

###Instance variables 

variable "instance_ami" {
    type = string  
}

variable "instance_type" {
    type = string
  
}

#Security Group 
variable "ports" {
    type = list
}

#Virtual Private cloud (VPC)
variable "vpc_cidr" {
    type = string  
}

#Subnet 
variable "public_subnet_cidr" {
    type = string
}
