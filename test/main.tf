terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
    }
  }
}


data "equinix_fabric_service_profiles" "name" {
  filter {
    operator = "="
    property = "/name"
    values   = ["AWS Direct Connect"]
  }
}

output "name" {
  value = data.equinix_fabric_service_profiles.name.data[0].uuid
}

// Service name from the CSP
// AWS Direct Connect
// Azure ExpressRoute
