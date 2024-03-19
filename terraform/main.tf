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
  num_workers             = 2
  autotermination_minutes = 20
  autoscale {
    min_workers = 1
    max_workers = 10
  }

  azure_client_secret = var.azure_client_secret
  azure_client_id     = var.azure_client_id
  azure_tenant_id     = var.azure_tenant_id
}
