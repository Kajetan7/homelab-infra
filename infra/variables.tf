variable "resource_group_name" {
  default = "RG-portfolio-page"
  type        = string
}

variable "location" {
  default     = "westeurope"
  type        = string
}

variable "project_name" {
  default     = "portfolio-kajetan"
  type        = string
}

variable "container_image" {
  default = "kajetan7/homelab:latest"
  type        = string
}

variable "docker_hub_username" {
  description = "Docker Hub username for private repo"
  type        = string
  sensitive   = true
}

variable "docker_hub_token" {
  description = "Docker Hub token/password for private repo"
  type        = string
  sensitive   = true
}
