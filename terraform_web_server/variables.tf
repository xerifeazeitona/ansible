variable "qemu_uri" {
    default = "qemu:///system"
}

variable "disk_size" { 
    #1024*1024*1024 = 1G
    default = 1024*1024*1024*5
}

variable "machine_name" {
    default = "ubuntu_vm"
}

variable "vcpu" { 
    default = "1"
}

variable "memory" {
    default = "512"
}