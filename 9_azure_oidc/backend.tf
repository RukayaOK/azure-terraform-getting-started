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
    key                  = "oidc.tfstate"
  }

}

provider "azurerm" {
  features {}

  use_oidc = true
}