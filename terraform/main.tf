## Create the Resource Group
#  resource "azurerm_resource_group" "this" {
#    name     = "heloootest-rg"
#    location = "East US2"
#    
#    tags = {
#    environment = "dev"
#    }
#}
#  
#  # Create the Databricks Workspace
#    resource "azurerm_databricks_workspace" "this" {
#    name                        = "heloootest-workspace"
#    resource_group_name         = azurerm_resource_group.this.name
#    location                    = azurerm_resource_group.this.location
#  sku                         = "premium" // Options: Standard, Premium, Trial
#  #managed_resource_group_name = azurerm_resource_group.this.name // Use the same resource group as the workspace for managed resources
#    
#    tags = {
#    environment = "dev"
#}
#}
    
    resource "databricks_cluster" "this" {
    cluster_name            =  "heloootest-data"
    spark_version           = "14.1-scala2.12"
    node_type_id            = "Standard_DS3_v2"
    num_workers             = 1  # Set num_workers to 1 for a single-node cluster
    autotermination_minutes = 20
    autoscale {
    min_workers = 1  # Set min_workers to 1 for a single-node cluster
    max_workers = 1  # Set max_workers to 1 for a single-node cluster
}
}

