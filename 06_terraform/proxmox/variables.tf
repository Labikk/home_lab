variable "api_token" {
  type        = string
  description = "API Token for Proxmox provider"
  sensitive   = true
}

variable "endpoint" {
  type        = string
  description = "Proxmox API endpoint"
}
