resource "libvirt_volume" "os_image_ubuntu" {
  name   = "os_image_ubuntu"
  source = "focal-server-cloudimg-amd64.img"
}

resource "libvirt_volume" "ubuntu_disk" {
  name           = "ubuntu_disk"
  base_volume_id = libvirt_volume.os_image_ubuntu.id
  size           = var.disk_size
}