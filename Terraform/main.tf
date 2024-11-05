terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-00385a401487aefa4" # eu-west-1
  instance_type = "t2.micro"
  tags = {
    Name = "NEC Demo instance"
  }
}
