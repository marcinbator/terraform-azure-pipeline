output "public_ip_address" {
  value       = azurerm_public_ip.public_ip.ip_address
}

output "ssh_connection_command" {
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.public_ip.ip_address}"
}

output "web_server_url" {
  value       = "http://${azurerm_public_ip.public_ip.ip_address}:${var.http_port}"
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
}

output "virtual_machine_name" {
  value       = azurerm_linux_virtual_machine.vm.name
}

output "acr_name" {
  value = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "container_app_name" {
  value = azurerm_container_app.app.name
}

output "container_app_url" {
  value = "https://${azurerm_container_app.app.latest_revision_fqdn}"
}