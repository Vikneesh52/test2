# Create the Resource Group
resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location

  tags = {
    environment = var.env
  }
}

# Create the Databricks Workspace
resource "azurerm_databricks_workspace" "this" {
  name                        = var.wrkspname
  resource_group_name         = azurerm_resource_group.this.name
  location                    = azurerm_resource_group.this.location
  sku                         = var.sku

  tags = {
    environment = var.env
  }
}

# Create the cluster with the "smallest" amount
# of resources allowed.
data "databricks_node_type" "smallest" {
  local_disk = true
}


resource "databricks_cluster" "this" {
  cluster_name            = var.cluster_name
  node_type_id            = data.databricks_node_type.smallest.id
  spark_version           = var.spark_version
  autotermination_minutes = var.cluster_autotermination_minutes
  num_workers             = var.cluster_num_workers
}