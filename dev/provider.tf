terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "2.90.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "3-tire-rg"                                   # Can also be set via `ARM_USE_AZUREAD` environment variable.
    tenant_id            = "768c2942-6ded-4274-a906-05c932e5a3d8"  # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
    storage_account_name = "3tirestg"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
provider "azurerm" {
    features { }
    subscription_id = "2e333137-3307-4678-a744-a2d37508c632"
  
}