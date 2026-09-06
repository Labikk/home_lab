resource "proxmox_virtual_environment_vm" "rocky_app_01" {
  name        = "rocky-app-01"
  description = "Application server - Rocky Linux"
  node_name   = "pve"
  vm_id       = 201

  bios            = "ovmf"
  machine         = "q35"
  scsi_hardware   = "virtio-scsi-single"
  on_boot         = false
  stop_on_destroy = true

  clone {
    vm_id = var.rocky_template_id
    full  = true
  }

  cpu {
    cores = 2
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 2048
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  agent {
    enabled = false
  }

  initialization {
    ip_config {
      ipv4 {
        address = var.rocky_app_vm_ip
        gateway = var.gateway
      }
    }
  }
}

resource "proxmox_virtual_environment_vm" "rocky_db_01" {
  name        = "rocky-db-01"
  description = "Database server - Rocky Linux"
  node_name   = "pve"
  vm_id       = 202

  bios            = "ovmf"
  machine         = "q35"
  scsi_hardware   = "virtio-scsi-single"
  on_boot         = false
  stop_on_destroy = true

  clone {
    vm_id = var.rocky_template_id
    full  = true
  }

  cpu {
    cores = 2
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 2048
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  agent {
    enabled = false
  }

  initialization {
    ip_config {
      ipv4 {
        address = var.rocky_db_vm_ip
        gateway = var.gateway
      }
    }
  }
}

resource "proxmox_virtual_environment_vm" "ubuntu_monitoring_01" {
  name        = "ubuntu-monitoring-01"
  description = "Monitoring server - Ubuntu"
  node_name   = "pve"
  vm_id       = 203

  bios            = "ovmf"
  machine         = "q35"
  scsi_hardware   = "virtio-scsi-single"
  on_boot         = false
  stop_on_destroy = true

  clone {
    vm_id = var.ubuntu_template_id
    full  = true
  }

  cpu {
    cores = 2
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 2048
  }

  network_device {
    bridge   = "vmbr0"
    firewall = true
  }

  agent {
    enabled = false
  }

  initialization {
    ip_config {
      ipv4 {
        address = var.ubuntu_monitoring_vm_ip
        gateway = var.gateway
      }
    }
  }
}