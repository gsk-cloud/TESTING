terraform {
#  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#provider "aws" {
#  region = "us-east-1"
#  profile = "GSK-1-AWS-Credentials-Profile"
#}

resource "aws_instance" "example" {
  ami                    = "ami-0fb653ca2d3203ac1"
#  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type          = "t2.micro"

  tags =  {
    Name = "terraform-example"
  }
}