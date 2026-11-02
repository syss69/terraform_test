resource "aws_security_group" "learning" {
  name        = "trajetico-terraform-learning"
  description = "Temporary sec. group "
  vpc_id      = data.aws_vpc.default.id

  tags = {
    Name        = "trajetico-terraform-learning"
    Project     = "terraform-learning"
    ManagedBy   = "terraform"
    Environment = "learning"
  }
}
