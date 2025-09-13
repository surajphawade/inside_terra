resource "azurerm_key_vault_secret" "secret" {
  name         = var.secret_name
  value        = var.secret_value
  key_vault_id = azurerm_key_vault.akv-data.id
}

data "azurerm_key_vault" "akv-data" {
  name                = var.data_secret_name
  resource_group_name = var.rg_name
}