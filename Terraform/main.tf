provider "aws" {
  access_key = "${AWS_ACCESS_KEY_ID}"
  secret_key = "${AWS_SECRET_ACCESS_KEY}"
  region = "eu-west-1"
}

resource "aws_instance" "foo" {
  ami           = "ami-00385a401487aefa4" # eu-west-1
  instance_type = "t2.micro"
  tags = {
    Name = "NEC Demo instance"
  }

data "terraform_remote_state" "tfstate" {
  backend = "s3"

  config {
    bucket = "mycompany-terraform"
    key = "terraform/terraform.tfstate"
    region = "eu-west-1"
  }
}
}
