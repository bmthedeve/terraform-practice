provider "aws" {}

resource "aws_instance" "ec2" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  count = var.howmany == true ? 2 : 1
}

output "instance-count" {
  value = "Enter true if u need 2 instances"
}
variable "howmany" {

}