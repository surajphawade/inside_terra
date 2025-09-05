terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "2.90.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "3tire-rg"                                  
    tenant_id            = "768c2942-6ded-4274-a906-05c932e5a3d8"  
    storage_account_name = "3tirestg"                              
    container_name       = "tfstate"                               
    key                  = "dev.terraform.tfstate"                
  }
}
provider "azurerm" {
    features { }
    subscription_id = "2e333137-3307-4678-a744-a2d37508c632"
  
}