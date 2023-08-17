terraform {
  required_providers {
    tfcoremock = {
      source = "hashicorp/tfcoremock"
    }
  }
}

data "tfcoremock_simple_resource" "external" {
  id = var.id
}

resource "tfcoremock_simple_resource" "internal" {
  string  = data.tfcoremock_simple_resource.external.string
  number  = data.tfcoremock_simple_resource.external.number
  boolean = data.tfcoremock_simple_resource.external.boolean
}
