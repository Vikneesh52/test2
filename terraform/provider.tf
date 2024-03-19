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
  azure_workspace_resource_id = "638868633463028"
  host                        = "adb-638868633463028.8.azuredatabricks.net"
}
