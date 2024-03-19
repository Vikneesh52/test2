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
  host          = "https://adb-638868633463028.8.azuredatabricks.net"
  token         = "dapidd2cf69bf1603e0f13f45df519d17c8d-3"
}
