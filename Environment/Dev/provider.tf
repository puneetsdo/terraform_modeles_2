terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend"
    storage_account_name = "stgabackend"
    container_name       = "cntbackend"
    key                  = "M2"
    
  }
}
provider "azurerm" {
  features {}
subscription_id = "bc2e948c-cd8d-4b6c-bc99-9496f31d3a63"
}