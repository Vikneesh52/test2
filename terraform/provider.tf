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
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
}
