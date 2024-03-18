terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=0.14.8"
    }
  }
}
provider "azurerm" {
  features {}
}
