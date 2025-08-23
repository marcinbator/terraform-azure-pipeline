output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
}

output "container_frontend_name" {
  value = azurerm_container_app.frontend.name
}

output "container_backend_name" {
  value = azurerm_container_app.backend.name
}

output "container_frontend_url" {
  value = "https://${azurerm_container_app.frontend.latest_revision_fqdn}"
}

output "container_backend_url" {
  value = "https://${azurerm_container_app.backend.latest_revision_fqdn}"
}