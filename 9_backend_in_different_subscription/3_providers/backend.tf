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
  }
}

provider "azurerm" {
  features {}

  #client_id = var.AZURE_CLIENT_ID
  #client_secret = var.AZURE_CLIENT_SECRET
  subscription_id = var.AZURE_SUBSCRIPTION_ID 
  #tenant_id = var.AZURE_TENANT_ID
}

variable AZURE_SUBSCRIPTION_ID {
  type        = string
}
