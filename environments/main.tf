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

resource "databricks_cluster" "this" {
  name               = "example-cluster"
  resource_group_name = azurerm_resource_group.this.name
  location           = azurerm_resource_group.this.location
  num_workers        = 2
  node_type_id       = "Standard_DS3_v2"
  spark_version      = "7.3.x-scala2.12"
#  spark_conf {
#    spark.speculation = "false"
#  }
  tags = {
    environment = "production"
  }
}