terraform {
  required_version = ">= 1.0.0"

  backend "azurerm" {
    resource_group_name  = "RG-admin-data"
    storage_account_name = "tfstatewesa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
