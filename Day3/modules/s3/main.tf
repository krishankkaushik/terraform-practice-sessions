resource "aws_s3_bucket" "example" {
  bucket = "kk-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
