output "public_ip" {
  description = "Public IP of the VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "ssh_command" {
  description = "Convenience SSH command"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.pip.ip_address}"
}
