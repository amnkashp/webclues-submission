terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = var.main_region 
  access_key = var.access_Key 
  secret_key = var.secret_Key 

}