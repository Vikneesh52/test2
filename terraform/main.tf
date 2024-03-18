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
  managed_resource_group_name = azurerm_resource_group.this.name // Use the same resource group as the workspace for managed resources

  tags = {
    environment = "dev"
  }

  depends_on = [azurerm_resource_group.this]
}
