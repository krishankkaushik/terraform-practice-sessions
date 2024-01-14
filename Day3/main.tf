provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0a0f1259dd1c90938" # replace this
  instance_type_value = "t2.micro"
}

module "ebs" {
  source = "./modules/ebs"
  a_zone = "ap-south-1a" # replace this
  size = "2"
}

module "s3" {
  source = "./modules/s3"
}
