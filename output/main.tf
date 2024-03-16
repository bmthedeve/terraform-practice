provider "aws" {
  
}

resource "aws_eip" "eip" {
  domain = "vpc"
}
output "public_ip" {
  value = aws_eip.eip.public_ip
}