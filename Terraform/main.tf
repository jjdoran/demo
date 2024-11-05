provider "aws" {
  region = "eu-west-1"
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

/resource "aws_key_pair" "deployer" {
	key_name	= "aws-key"
	public_key 	= "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCLUwRhdAweYqlf78butBzdIrx++8QCErAjDxjhkLTw8icY3eLfV71/g80BXgKorAImWmJqQdGKjwUz1QdVThafjzY2Qdk8MYfsER/LoxCIh/G9MMrLMQqyZdK3jItlaS5Do87v51ZlQyPMN7SV6OCXJu+7Q+kLsqyDwDdMHSEtVXqHQrYSFp/h9yaGrl1hGm+c5GSCPurw/jFIklpB3kVn4VJ36tdD37/uG5oiLS4xnqGTXWRFb/tTEKssE6MJLY7mPFJr+v9BKgT3tJ3eSnbP7GyCPLSURNBH6ZHYqzN06co+9hgMD5vUBJj3cMKdUxp1cwWnB22UMR9XfRXmCA11 AWS key"
}/
