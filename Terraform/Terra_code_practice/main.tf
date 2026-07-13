terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.20.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "terrServer" {
  ami = "ami-01a18c38ece67e620"
  instance_type = var.instance_type

  tags = {
    Name = "terraform"
  }
}