output "azurerm_storage_account" {
  value = {
    location = azurerm_storage_account.st.location
    name     = azurerm_storage_account.st.name
  }
}

output "azurerm_storage_tags" {
  description = "The mandatory tags used for Azure infrastructure and resources." 
  value = module.tags.tags
}

output "azurerm_storage_container" {
  value = {
    name = azurerm_storage_container.sc.name
  }
}
