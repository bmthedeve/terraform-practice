provider "aws" {
  
}

resource "aws_instance" "ec2" {
  ami = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"
}