provider "aws" {
  
}

resource "aws_instance" "name" {
    ami = "ami-0a3c3a20c09d6f377"
    # instance_type = "t2.nano"
    instance_type = var.instancetype
}

# variable "instancetype" {

# }