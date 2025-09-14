
resource "azurerm_key_vault" "akv" {
  name                = var.kv_name
  resource_group_name = var.rg_name
  location            = var.location
  tenant_id           = data.azurerm_key_vault.kv.tenant_id
  sku_name            = "standard"
access_policy {
    tenant_id = data.azurerm_key_vault.kv.tenant_id
    object_id = data.azurerm_key_vault.kv.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}