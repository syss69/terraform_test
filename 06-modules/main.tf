locals {
  environments = {
    staging = {
      url     = "https://dev.trajetico.com"
      purpose = "manual testing before production"
    }

    production = {
      url     = "https://trajetico.com"
      purpose = "real users"
    }

    monitoring = {
      url     = "http://100.66.128.49:3000/"
      purpose = "private Grafana access through Tailscale"
    }

  }
}

module "deploy_environment" {
  for_each = local.environments

  source = "./modules/environment"

  name    = each.key
  url     = each.value.url
  purpose = each.value.purpose
}

output "environments_urls" {
  value = {
    for name, environment in module.deploy_environment :
    name => environment.environment.url
  }
}
