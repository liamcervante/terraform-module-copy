terraform {
  required_providers {
    tfcoremock = {
      source = "hashicorp/tfcoremock"
    }
  }
}

resource "tfcoremock_simple_resource" "external" {
  string = "Hello, world!"
  number = 2004
  bool   = true
}

output "string" {
  value = tfcoremock_simple_resource.external.string
}

output "number" {
  value = tfcoremock_simple_resource.external.number
}

output "bool" {
  value = tfcoremock_simple_resource.external.bool
}

output "id" {
  value = tfcoremock_simple_resource.external.id
}
