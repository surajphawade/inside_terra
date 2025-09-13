resource "azurerm_key_vault" "akv" {
  name                = var.kv_name
  resource_group_name = var.rg_name
  location            = var.location
  tenant_id           = var.tenant_id
  sku_name            = "standard"
}
