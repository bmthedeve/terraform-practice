provider "aws" {
  
}

resource "aws_instance" "ec2" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = var.instancetype
}