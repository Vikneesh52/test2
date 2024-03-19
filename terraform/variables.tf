# Resource group name
variable "rgname" {
  type        = string
  description = "This variable defines the resource group name used to build resources"
}

# workspace name
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
  default     = "East US2"
}

#SKU type
variable "sku" {
  type        = string
  description = "This variable defines the account type"
}

variable "azure_workspace_resource_id" {
  type        = string
  description = "This variable defines the azure wrkspce id"
}

variable "host" {
  type        = string
  description = "This variable defines the host"
}

variable "aad_tenant_id" {
  type        = string
  description = "This variable defines the tenant id"
}

variable "aad_subscription_id" {
  type        = string
  description = "This variable defines the subscription id"
}