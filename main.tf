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
  ami           = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"
  key_name   = "icaro.quintella1"
  tags = {
    Name = "IAC-ALURA"
  }
}