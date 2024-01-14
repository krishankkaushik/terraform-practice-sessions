resource "aws_ebs_volume" "example" {
  availability_zone = var.a_zone
  size              = var.size

  tags = {
    Name = "terraform-ebs"
  }
}
