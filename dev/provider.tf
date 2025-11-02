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
    subscription_id = "245413b2-ec2b-4a15-93d2-2f165a2c170"
  
}