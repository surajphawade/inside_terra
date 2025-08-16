module "azurerm_resource_group" {
    source = "../modules/azure_resource_group"
    rg_name = var.rg_name
    rg_location = var.rg_location
  
}

module "azurerm_vitual_network" {
     depends_on = [ module.azurerm_resource_group ]
    source = "../modules/azure_virtual_network"
    name = var.vnet_name
    location = var.rg_location
    rg_name = var.rg_name
    }

module "azurerm_storage_account" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../modules/azure_storage_account"
    stg_name = var.stg_name
    rg_name = var.rg_name
    location = var.rg_location

  
}

module "azurerm_subnet" {
    depends_on = [ module.azurerm_resource_group, module.azurerm_vitual_network ]
    count = length(var.address_prefixes)
    source = "../modules/azure_subnet"
    snet_name = var.snet_name
    rg_name = var.rg_name
    vnet_name = var.vnet_name
    address_prefixes = [var.address_prefixes[count.index]]
  
}