locals {
  environments = {
    staging = {
      url     = "https://dev.trajetico.com"
      purpose = "manual testing before production"
    }
    production = {
      url     = "https://trajetico.com"
      purpose = "real user"
    }
    monitoring = {
      url     = "http://100.66.128.49:3000/"
      purpose = " monitoring server"
    }
  }
}

resource "terraform_data" "environment" {
  for_each = local.environments

  input = {
    name    = each.key
    url     = each.value.url
    purpose = each.value.purpose
  }
}

output "environments_url" {
  value = {
    for name, environment in terraform_data.environment :
    name => environment.output.url
  }
}

