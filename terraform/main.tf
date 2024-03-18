resource "azurerm_databricks_workspace" "intact_databricks_workspace" {
  name = var.workspace_name
  location = var.location
  resource_group_name = var.resource_group_name
  sku = var.sku
  tags = {

    onwer = var.onwer
    Environment = var.environment_tag
  }

}