resource "aws_s3_bucket" "learning" {
  bucket = "trajetico-terraform-lab-421247849651"

  tags = {
    Name      = "trajetico-terraform_lab"
    Project   = "terraform-learning"
    ManagedBy = "terraform"
  }
}

output "learning_bucket_name" {
  value = aws_s3_bucket.learning.bucket
}
