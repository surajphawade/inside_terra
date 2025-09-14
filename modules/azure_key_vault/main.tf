
resource "azurerm_key_vault" "akv" {
  name                = var.kv_name
  resource_group_name = var.rg_name
  location            = var.location
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = "c29dd0e6-c9c5-42d2-8f1d-7b0a028178aa"
    key_permissions = [
      "Get","list"
    ]

    secret_permissions = [
      "Get","list","set"
    ]

    storage_permissions = [
      "Get",
    ]
  }
}
output "id" {
  value = azurerm_key_vault.akv.id
}