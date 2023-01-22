terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "rok-terraform-rg-do-not-delete"
    storage_account_name = "terrates901"
    container_name       = "state"
    key                  = "new-dev.tfstate"
    subscription_id      = "60f16e2f-9f1c-4f4d-8f48-d36ca65d0699"
  }
}

provider "azurerm" {
  features {}
}