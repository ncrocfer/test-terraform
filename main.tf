terraform {
  backend "remote" {
    organization = "ncrocfer"

    workspaces {
     name = "test-github"
    }
  }
}

provider "openstack" {
  domain_name = "default"
  alias = "ovh"
}

variable "mykey" {
  type = string
}

resource "openstack_compute_keypair_v2" "mykey" {
  provider = "openstack.ovh"
  name = "mykey"
  public_key = var.mykey
}

