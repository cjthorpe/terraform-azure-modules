output "azurerm_resource_group" {
  value = {
    location = azurerm_resource_group.block.location
    name     = azurerm_resource_group.block.name
  }
}

output "azurerm_storage_account" {
  value = {
    location = azurerm_storage_account.block.location
    name     = azurerm_storage_account.block.name
  }
}

output "azurerm_storage_container" {
  value = {
    name = azurerm_storage_container.block.name
  }
}
