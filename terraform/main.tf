terraform {
  required_version = ">= 1.6.0"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}


# -------------------------
# Web Node Security Group
# -------------------------




resource "aws_instance" " Nginx" {
  ami           = "ami-09c54d172e7aa3d9a"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0828482fafcb40dc8"
  key_name      = "October2025"

  tags = {
    Name = " Nginx_node"
  }
}

# -------------------------
# Java Node Security Group
# -------------------------




resource "aws_instance" "Java" {
  ami           = "ami-09c54d172e7aa3d9a"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0828482fafcb40dc8"
  key_name      = "October2025"

  tags = {
    Name = "Java_node"
  }
}


# -------------------------
# Web Node Security Group
# -------------------------




resource "aws_instance" "Python" {
  ami           = "ami-09c54d172e7aa3d9a"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0828482fafcb40dc8"
  key_name      = "October2025"

  tags = {
    Name = "Python_node"
  }
}