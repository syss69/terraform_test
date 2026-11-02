terraform {
  backend "s3" {
    bucket       = "trajetico-terraform-state"
    key          = "terraform-lab/07-remote-state/terraform.tfstate"
    region       = "eu-north-1"
    profile      = "terraform"
    encrypt      = true
    use_lockfile = true
  }
}
