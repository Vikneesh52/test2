# Resource group name
variable "rgname" {
  type        = string
  description = "This variable defines the resource group name used to build resources"
  default     = "datasanddlhrg01"
}

# Workspace name
variable "wrkspname" {
  type        = string
  description = "This variable defines the workspace name used to build resources"
  default     = "datasanddbrksws"
}

# Environment
variable "env" {
  type        = string
  description = "This variable defines the environment to be built"
  default     = "dev"
}

# Azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
  default     = "East US2"
}

# SKU type
variable "sku" {
  type        = string
  description = "This variable defines the account type"
  default     = "premium"
}

variable "azure_workspace_resource_id" {
  type        = string
  description = "This variable defines the azure workspace id"
  default     = "/subscriptions/31324520-9b0f-447e-98f4-c8ac3667708d/resourceGroups/heloootest-rg/providers/Microsoft.Databricks/workspaces/heloootest-workspace"
}

variable "host" {
  type        = string
  description = "This variable defines the host"
  default     = "adb-638868633463028.8.azuredatabricks.net"
}

variable "aad_tenant_id" {
  type        = string
  description = "The id of the Azure Tenant to which all subscriptions belong"
  default     = "29dfe2bd-dc40-4934-8c75-8419c7ab1e30"
}

variable "aad_subscription_id" {
  type        = string
  description = "The id of the Azure Subscription"
  default     = "31324520-9b0f-447e-98f4-c8ac3667708d"
}

variable "aad_client_id" {
  type        = string
  description = "The client id of the Service Principal for interacting with Azure resources"
  default     = "99349683-b6fe-40ca-9d83-1c9e4bc08aa0"
}

variable "aad_client_secret" {
  type        = string
  description = "The client secret of the Service Principal for interacting with Azure resources"
  sensitive   = true
  default     = "QFq8Q~sk1gQkOUvRfGTyo.u2eDYRsHqozj_SodfU"
}
