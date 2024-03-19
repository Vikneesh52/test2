terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "azurerm" {
#  aad_client_id       = ""
#  aad_client_secret   = ""
  aad_tenant_id       = var.aad_tenant_id
  aad_subscription_id = var.aad_subscription_id
  features {}
}

provider "databricks" {
  azure_workspace_resource_id = var.azure_workspace_resource_id
  host                        = var.host
}
