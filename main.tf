provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = "c7i-flex.large"

  tags = {
    Name = "Jenkins-Terraform-Instance"
  }
}
