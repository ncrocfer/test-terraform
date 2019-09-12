provider "openstack" {
  domain_name = "default"
  alias = "ovh"
}

variable "mykey" {
  type = string
}

resource "openstack_compute_keypair_v2" "mykey" {
  provider = "openstack.ovh"
  name = "mykey-newname"
  public_key = var.mykey
}

#resource "openstack_compute_instance_v2" "my-instance" {
#  name = "my-instance"
#  provider = "openstack.ovh"
#  image_name = "Ubuntu 18.04"
#  flavor_name = "vps-ssd-1"
#
#  key_pair = "${openstack_compute_keypair_v2.mykey.name}"
#  network {
#    name = "Ext-Net"
#  }
#}

