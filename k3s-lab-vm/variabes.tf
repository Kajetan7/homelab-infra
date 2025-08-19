variable "project" {
  description = "Tag/name prefix for resources"
  type        = string
  default     = "homelab-k3s"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "rg_name" {
  description = "Resource Group name"
  type        = string
  default     = null
}

variable "admin_username" {
  description = "Linux admin username"
  type        = string
}

variable "admin_ssh_public_key" {
  description = "SSH public key content (ssh-rsa/ssh-ed25519 ...)"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B2s"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to access SSH (22/tcp). Example: 1.2.3.4/32"
  type        = string
  default     = "0.0.0.0/0"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}
