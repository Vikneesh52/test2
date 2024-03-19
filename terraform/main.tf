# Create the Resource Group
resource "azurerm_resource_group" "this" {
  name     = "helooo-rg"
  location = "East US2"

  tags = {
    environment = "dev"
  }
}

# Create the Databricks Workspace
resource "azurerm_databricks_workspace" "this" {
  name                        = "helooo-workspace"
  resource_group_name         = azurerm_resource_group.this.name
  location                    = azurerm_resource_group.this.location
  sku                         = "premium" // Options: Standard, Premium, Trial
  #managed_resource_group_name = azurerm_resource_group.this.name // Use the same resource group as the workspace for managed resources

  tags = {
    environment = "dev"
  }
}

# Create Databricks Cluster
resource "azurerm_databricks_cluster" "this" {
  name                 = "heloo-data"
  resource_group_name  = azurerm_resource_group.example.name
  location             = azurerm_resource_group.example.location
  workspace_name       = azurerm_databricks_workspace.example.name
  node_type_id         = "Standard_DS3_v2"
  num_workers          = 2
  spark_version        = "7.0.x-scala2.12"
  auto_termination_minutes = 30
}
