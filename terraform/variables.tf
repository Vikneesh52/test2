variable "aad_tenant_id" {
  type        = string
  description = "The id of the Azure Tenant to which all subscriptions belong"
}

variable "aad_subscription_id" {
  type        = string
  description = "The id of the Azure Subscription"
}

variable "aad_client_id" {
  type        = string
  description = "The client id of the Service Principal for interacting with Azure resources"
}

variable "aad_client_secret" {
  type        = string
  description = "The client secret of the Service Principal for interacting with Azure resources"
  sensitive   = true
}

# Resource group name
variable "rgname" {
  type        = string
  description = "This variable defines the resource group name used to build resources"
}

# Workspace name
variable "wrkspname" {
  type        = string
  description = "This variable defines the workspace name used to build resources"
}

# Environment
variable "env" {
  type        = string
  description = "This variable defines the environment to be built"
}

# Azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
}

# SKU type
variable "sku" {
  type        = string
  description = "This variable defines the account type"
}

variable "azure_workspace_resource_id" {
  type        = string
  description = "This variable defines the azure workspace id"
}

variable "host" {
  type        = string
  description = "This variable defines the host"
}