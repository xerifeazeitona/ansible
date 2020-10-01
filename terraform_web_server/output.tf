output "ips" {
  value = libvirt_domain.ubuntu_vm.*.network_interface.0.addresses
}