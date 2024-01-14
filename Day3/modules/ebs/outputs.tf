output "aws_ebs_id" {
  description = "The id of the ebs"
  value = aws_ebs_volume.example.id
}
