module "azurerm_resource_group" {
    source = "../modules/azure_resource_group"
    for_each = var.resource_group
      rg_name = each.value.name
      rg_location = each.value.location
  
}

module "azurerm_vitual_network" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../modules/azure_virtual_network"
    for_each = var.virtual_network
    name = each.value.vnet_name
    location = each.value.location
    rg_name = each.value.rg_name
    }

module "azurerm_storage_account" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../modules/azure_storage_account"
    for_each = var.storage_account
    stg_name = each.value.stg_name
    rg_name = each.value.rg_name
    location = each.value.location

  
}

module "azurerm_subnet" {
    depends_on = [ module.azurerm_vitual_network ]
   # count = length(var.address_prefixes)
    source = "../modules/azure_subnet"
    for_each = var.azure_subnet
    snet_name = each.value.snet_name
    rg_name = each.value.rg_name
    vnet_name = each.value.vnet_name
    address_prefixes = each.value.address_prefixes #[var.address_prefixes[count.index]]
  
}

module "azurerm_linux_virtual_machine" {
    depends_on = [ module.azurerm_subnet ]
  source = "../modules/azure_virtual_linux_machine"

  for_each = var.azure_virtual_machine
#  subnet_id = each.value.subnet_id
  nic_name = each.value.nic_name
  location = each.value.location
  rg_name = each.value.rg_name
  vm_name = each.value.vm_name
  uname = each.value.uname
  pass = each.value.pass
  name = each.value.name
  vnet_name = each.value.vnet_name
  pip_name = each.value.pip_name

}

module "azurerm_public_ip" {
    for_each = var.azure_public_ip
depends_on = [ module.azurerm_resource_group ]
 source = "../modules/azure_public_ip"
 pip_name = each.value.pip_name
 rg_name = each.value.rg_name
 rg_location = each.value.rg_location

}

module "azurerm_key_vault" {
  depends_on = [ module.azurerm_resource_group ]
  source = "../modules/azure_key_vault"
  for_each = var.azure_key_vault

  kv_name = each.value.kv_name
  rg_name = each.value.rg_name
  location = each.value.location
  tenant_id = each.value.tenant_id
}

module "azurerm_key_vault_secret" {
  source = "../modules/azure_key_vault_secrets"
  depends_on = [ module.azurerm_key_vault ]

  for_each = var.azure_key_vault_secrets

  secret_name = each.value.secret_name
  secret_value = each.value.secret_value
  key_vault_name = each.value.key_vault_name
  rg_name = each.value.rg_name

}

module "azurerm_mysql_server" {
  depends_on = [ module.azurerm_resource_group ]
  source = "../modules/azure_mysql_server"

  for_each = var.azure_mysql_server
  rg_name = each.value.rg_name
  location = each.value.location
  sqlserver_name = each.value.sqlserver_name
  administrator_login = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
  
}

module "azurerm_mssql_database" {
  depends_on = [ module.azurerm_mysql_server ]
  source = "../modules/azure_mysql_database"

  for_each = var.azure_mysql_database

  msdb_name = each.value.msdb_name
  collation = each.value.collation
  sqlserver_name = each.value.sqlserver_name
  rg_name = each.value.rg_name
  
}