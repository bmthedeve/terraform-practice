provider "aws" {
    region = "us-east-1"
    access_key = "YOUR ACCESS KEY"
    secret_key = "YOUR SECRET KEY"
}

resource "aws_instance" "myec2" {
    ami = "ami-0005e0cfe09cc9050"
    instance_type = "t2.micro"
}
