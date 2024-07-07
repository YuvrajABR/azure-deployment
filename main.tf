terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "azureautomation-rg"
    storage_account_name = "tfstorageaccx"
    container_name       = "sdlmdevtfstatefile"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  location = "East US"
  name     = "azus-rg-demo-002"
}