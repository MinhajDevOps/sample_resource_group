terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.93.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Avengers_rgtfstate"
    storage_account_name = "avngsttfstatestorage"
    container_name       = "avncrtfstate"
    key                  = "rg.tfstate"
  }

}

provider "azurerm" {
  features {}
}