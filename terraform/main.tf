terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstateprz"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  storage_use_azuread = true
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "Poland Central"
}
