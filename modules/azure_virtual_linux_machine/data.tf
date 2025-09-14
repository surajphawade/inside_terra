data "azurerm_subnet" "subnet" {
  name                 = var.name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.rg_name
}

data "azurerm_public_ip" "pip" {
  name                = var.pip_name
  resource_group_name = var.rg_name
}
# data "azurerm_key_vault" "kv" {
#   name                = var.kv_name
#   resource_group_name = var.rg_name
# }

# data "azurerm_key_vault_secret" "admin_name" {
#   name         = var.admin_name     # Key Vault secret ka naam
#   key_vault_id = data.azurerm_key_vault.kv.id
# }

# data "azurerm_key_vault_secret" "admin_password" {
#   name         = var.admin_password     # Key Vault secret ka naam
#   key_vault_id = data.azurerm_key_vault.kv.id
# }