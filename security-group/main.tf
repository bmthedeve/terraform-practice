provider "aws" {
  
}

resource "aws_eip" "eip" {
  domain = "vpc"
}

resource "aws_security_group" "sg-tf" {
  name = "secgrp-tf"
  description = "Allow HTTPS to web server"
  
  ingress {
    description = "HTTPS ingress"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.eip.public_ip}/32"]
  }
}