provider "aws" {
  
}

resource "aws_instance" "ec2" {
  ami = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  count = 5
}

# resource "aws_iam_user" "iam_user" {
#   name = "user${count.index}"
#   count = 3
# }
resource "aws_iam_user" "iam_user" {
  name = var.user_names[count.index]
  count = 3
}

variable "user_names" {
  default = ["Ram","Raj","Ravi"]
}