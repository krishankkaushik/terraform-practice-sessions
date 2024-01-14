terraform {
  backend "s3" {
    bucket         = "krishank-aws-s3" # change this
    key            = "krish/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
