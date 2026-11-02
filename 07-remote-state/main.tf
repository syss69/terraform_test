resource "terraform_data" "remote_state" {
  input = "This state stored in S3"
}

output "state_location" {
  value = "s3://trajetico-terraform-state/terraform-lab/07-remote-state/terraform.tfstate"
}
