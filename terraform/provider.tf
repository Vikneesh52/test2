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
  client_id       = var.aad_client_id
  client_secret   = var.aad_client_secret
  tenant_id       = "29dfe2bd-dc40-4934-8c75-8419c7ab1e30"
  subscription_id = "31324520-9b0f-447e-98f4-c8ac3667708d"
  features {}
}

provider "databricks" {
  azure_workspace_resource_id = var.azure_workspace_resource_id
  host                        = var.host
}
