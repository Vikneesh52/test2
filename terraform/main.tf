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
  sku                         = "trial" // options: Standard, Premium, Trial
  managed_resource_group_name = "helooo-workspace-rg"

  tags = {
    environment = "dev"
  }
}
