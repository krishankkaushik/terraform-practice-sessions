provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0a0f1259dd1c90938" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-06d4640add0dd081c". # replace this
}
