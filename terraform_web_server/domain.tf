resource "libvirt_domain" "ubuntu_vm" {
  name   = var.machine_name
  vcpu   = var.vcpu
  memory = var.memory

  cloudinit = libvirt_cloudinit_disk.commoninit.id

  disk {
    volume_id = libvirt_volume.ubuntu_disk.id
  }

  network_interface {
    network_name = "default"
    wait_for_lease = true
  }
  
  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}