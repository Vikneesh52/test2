terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
      databricks = {
        source = "hashicorp/databricks"
    }
  }
}
provider "azurerm" {
  features {}
}
