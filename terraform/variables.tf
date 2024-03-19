# Resource group name
variable "rgname" {
  type        = string
  description = "This variable defines the resource group name used to build resources"
  default     = var.rgname
}

# Workspace name
variable "wrkspname" {
  type        = string
  description = "This variable defines the workspace name used to build resources"
  default     = var.wrkspname
}

# Environment
variable "env" {
  type        = string
  description = "This variable defines the environment to be built"
  default     = var.env
}

# Azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
  default     = var.location
}

# SKU type
variable "sku" {
  type        = string
  description = "This variable defines the account type"
  default     = var.sku
}

variable "azure_workspace_resource_id" {
  type        = string
  description = "This variable defines the azure workspace id"
  default     = var.azure_workspace_resource_id
}

variable "host" {
  type        = string
  description = "This variable defines the host"
  default     = var.host
}

variable "aad_tenant_id" {
  type        = string
  description = "The id of the Azure Tenant to which all subscriptions belong"
  default     = var.aad_tenant_id
}

variable "aad_subscription_id" {
  type        = string
  description = "The id of the Azure Subscription"
  default     = var.aad_subscription_id
}

variable "aad_client_id" {
  type        = string
  description = "The client id of the Service Principal for interacting with Azure resources"
  default     = var.aad_client_id
}

variable "aad_client_secret" {
  type        = string
  description = "The client secret of the Service Principal for interacting with Azure resources"
  sensitive   = true
  default     = var.aad_client_secret
}
