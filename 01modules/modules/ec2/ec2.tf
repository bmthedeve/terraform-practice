provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myInstance" {
  ami = var.ami_value
  instance_type = var.instance_type_value
}

variable "ami_value" {
  description = "description for ami_value"
}

variable "instance_type_value" {
  description = "description for instance_type_value" 
}

output "ip_address" {
  value = aws_instance.myInstance.public_ip
}
