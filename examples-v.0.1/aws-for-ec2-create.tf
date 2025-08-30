terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {

# Amazon linux
# ami           = "ami-08b5b3a93ed654d19"

# ubuntu
  ami           = "ami-084568db4383264d4"

  instance_type = "t2.micro"

  tags = {
    Name = "exp_terreform-ec2"
  }
}
