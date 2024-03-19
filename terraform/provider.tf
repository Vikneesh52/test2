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
  azure_workspace_resource_id = "/subscriptions/31324520-9b0f-447e-98f4-c8ac3667708d/resourceGroups/heloootest-rg/providers/Microsoft.Databricks/workspaces/heloootest-workspace"
  host                        = "adb-638868633463028.8.azuredatabricks.net"
}
