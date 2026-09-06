variable "api_token" {
  type        = string
  description = "API Token for Proxmox provider"
  sensitive   = true
}

variable "endpoint" {
  type        = string
  description = "Proxmox API endpoint"
}

variable "gateway" {
  type        = string
  description = "Default gateway for the VMs"
}

variable "rocky_template_id" {
  type        = number
  description = "VM ID of the Rocky Linux Cloud init template to clone"
}

variable "ubuntu_template_id" {
  type        = number
  description = "VM ID of the Ubuntu Cloud init template to clone"
}

variable "rocky_app_vm_ip" {
  type        = string
  description = "IP address for the Rocky Linux application server"
}

variable "rocky_db_vm_ip" {
  type        = string
  description = "IP address for the Rocky Linux database server"
}

variable "ubuntu_monitoring_vm_ip" {
  type        = string
  description = "IP address for the Ubuntu monitoring server"
}
