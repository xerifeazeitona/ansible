resource "libvirt_volume" "os_image" {
  name   = "os_image"
  source = "focal-server-cloudimg-amd64.img"
}

resource "libvirt_volume" "os_disk" {
  count          = length(var.machine_name)
  name           = "${var.machine_name[count.index]}_os_disk"
  base_volume_id = libvirt_volume.os_image.id
  size           = var.disk_size
}