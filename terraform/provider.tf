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
  features {}
}
provider "databricks" {
  azure_workspace_resource_id = module.databricks_workspace.databricks_workspace_id
  host                        = module.databricks_workspace.databricks_host
}
