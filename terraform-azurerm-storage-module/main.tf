resource "azurerm_storage_account" "st" {
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
  location                 = var.region
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.rg.name

  tags = module.tags.tags
}

resource "azurerm_storage_container" "sc" {
  container_access_type = var.container_access_type
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.st.name
}
