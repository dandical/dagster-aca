resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
  description = "The login server URL of the Azure Container Registry."
}

output "acr_admin_username" {
  value     = azurerm_container_registry.acr.admin_username
  sensitive = true
  description = "The admin username for the Azure Container Registry."
}

output "acr_admin_password" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true
  description = "The admin password for the Azure Container Registry."
}
