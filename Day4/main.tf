provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "kk" {
  instance_type = "t2.micro"
  ami = "ami-0d3f444bc76de0a79" # change this
  subnet_id = "subnet-06d4640add0dd081c" # change this
}

resource "aws_instance" "kk-2" {
  instance_type = "t2.micro"
  ami = "ami-0d3f444bc76de0a79" # change this
  subnet_id = "subnet-06d4640add0dd081c" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "krishank-aws-s3" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
