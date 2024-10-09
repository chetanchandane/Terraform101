#HCL syntax familiarity

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "xx"
  secret_key = "xx"
}

resource "aws_instance" "web"{
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
    tags = {
      Name = "terraform-ec2-first"
    }
}

resource "aws_instance" "web2"{
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
    tags = {
      Name = "terraform-ec2-seconf"
    }
}