resource "azurerm_resource_group" "block" {
  location = var.region
  name     = var.resource_group_name

  #add tags
}

resource "azurerm_storage_account" "block" {
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
  location                 = azurerm_resource_group.block.location
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.block.name

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "block" {
  container_access_type = var.container_access_type
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.block.name
}
