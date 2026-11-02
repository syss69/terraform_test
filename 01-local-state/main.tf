resource "terraform_data" "environment" {
  input = var.environment
}

output "environment" {
  value = terraform_data.environment.output
}
