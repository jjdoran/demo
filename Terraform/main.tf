provider "aws" {
  region = "eu-west-2"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "demobox" {
	ami           = "ami-00385a401487aefa4" # eu-west-1
	instance_type = "t2.micro"
	key_name = "aws-key"
	tags = {
		Name = "NEC Demo instance"
	}
}
