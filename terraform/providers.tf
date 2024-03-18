terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    databricks = {
      source = "databricks/databricks"
    }

  }


  backend "azurerm" {
    resource_group_name   = "ius-lob-sand-inf-dlh-eu2-rg-01"
    storage_account_name  = "intactcentillion"
    container_name        = "intactcenti"
    key                   = "intact.tfstate"
  }
}


provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

# provider "databricks" {
#   host= "https://adb-7299625912148099.19.azuredatabricks.net"
#   token= "dapibdcffc47b382f44186cb68eb4a5cbca8-3"

# }


