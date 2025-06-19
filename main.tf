provider "aws" {
  region = "eu-north-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-05d3e0186c058c4dd" # replace this
  instance_type_value = "t3.small"
}