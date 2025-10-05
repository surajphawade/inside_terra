terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "4.47.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name = "3tire-rg"                                  
  #   tenant_id            = "fbf3517a-6193-4d03-9580-ce8a94c1e28c"  
  #   storage_account_name = "3tirestg"                              
  #   container_name       = "tfstate"                               
  #   key                  = "dev.terraform.tfstate"                
  # }
}
provider "azurerm" {
    features { }
    subscription_id = "a7275015-536e-4c99-8431-5c9bfbc026c9"
  
}