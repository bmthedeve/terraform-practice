provider "aws" {
  region = var.region
}

resource "aws_instance" "my_instance" {
  ami           = lookup(var.ami_value,var.region)
  instance_type = var.instanceType
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "us-west-2"
}

variable "ami_value" {
  type = map
  default = {
    "us-east-1" = "ami-0323c3dd2da7fb37d"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0470e33cd681b2476"
  }
}

variable "instanceType" {}

output "timestamp" {
  value = local.time
}
