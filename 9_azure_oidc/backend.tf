terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.30.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rok-terraform-rg-do-not-delete"
    storage_account_name = "terrates901"
    container_name       = "state"
    key                  = "oidc.tfstate"
    use_oidc = true
  }

}

provider "azurerm" {
  use_oidc = true
  skip_provider_registration = true
  features {}
}