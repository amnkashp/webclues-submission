
### Global values###
main_region = "us-east-1"

# Please provde teh access and secret key of your account below
access_Key = "****************"    
secret_Key = "****************"  

### VPC level Values ###
vpc_cidr = "172.16.0.0/16"
public_subnet_cidr = "172.16.1.0/24"


### Instance level Values ###
#instance_ami = "ami-06c68f701d8090592" # amazon image 
instance_ami = "ami-005fc0f236362e99f" #ubuntu image
instance_type = "t2.micro"
ports = [22,80,443,3000]