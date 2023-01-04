terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws"  {
  region = "us-east-1"
  access_key = "your_access_key"
  secret_key = "your_secret_key" 
}



resource "aws_instance" "ec2-terraform" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.micro"
  }
