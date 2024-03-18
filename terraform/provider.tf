terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
provider "azurerm" {
  client_id       = var.aad_client_id
  client_secret   = var.aad_client_secret
  tenant_id       = var.aad_tenant_id
  subscription_id = var.aad_subscription_id
  features {}
}
