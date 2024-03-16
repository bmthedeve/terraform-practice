module "ec2instance" {
  source = "./modules/ec2"
  ami_value = "ami-0440d3b780d96b29d"
  instance_type_value = "t2.micro"
}

output "ip_address-in-root" {
  value = module.ec2instance.ip_address
}