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
resource "databricks_cluster" "this" {
  cluster_name            =  "helooo-data"
  spark_version           = "14.1-scala2.12"
  node_type_id            = "Standard_DS3_v2"
  num_workers             = 0  # Setting num_workers to 0 for a single-node cluster
  autotermination_minutes = 20
  autoscale {
    min_workers = 0  # Also set min_workers to 0 for a single-node cluster
    max_workers = 1  # Adjust max_workers accordingly for a single-node cluster
  }
  single_node             = true  # Specify single_node property as true
}
