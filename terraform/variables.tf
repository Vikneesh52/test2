variable "workspace_name" {
  type        = string
  description = "The name of the Databricks workspace."
}

variable "location" {
  type        = string
  description = "The location where the Databricks workspace will be created."
}

variable "subscription_id" {
  type        = string
  description = "The subscription ID where the Databricks workspace will be created."
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID associated with the Azure Active Directory where the Databricks workspace will be created."
}


variable "resource_group_name" {
  type        = string
  description = "The name of the Azure resource group where the Databricks workspace will be created."
}

variable "sku" {
  type        = string
  description = "The SKU (pricing tier) of the Databricks workspace."
}

variable "environment_tag" {
  type        = string
  description = "The environment tag to apply to the Databricks workspace."
}

variable "onwer" {
  type        = string
  description = "The owner of the Databricks workspace."
}

# cluster  creation

variable "host" {
  type        = string
  description = "The host URL of the Databricks cluster."
  default     = "https://adb-302867268976868.8.azuredatabricks.net"
}

variable "token" {
  type        = string
  description = "The token used to authenticate with the Databricks cluster."
  default     = "dapi905df3d8faa2f35e2b9242782c74b4a8-3"
}

variable "cluster_name" {
  type        = string
  description = "The name of the Databricks cluster."
  default     = "intact_cluster"
}

variable "spark_version" {
  type        = string
  description = "The version of Apache Spark used on the Databricks cluster."
  default     = "7.3.x-scala2.12"
}

variable "autotermination_minutes" {
  type        = number
  description = "The number of minutes before the cluster is automatically terminated when no jobs are running."
  default     = 20
}

variable "min_workers" {
  type        = number
  description = "The minimum number of worker nodes for autoscaling."
  default     = 2
}

variable "max_workers" {
  type        = number
  description = "The maximum number of worker nodes for autoscaling."
  default     = 50
}

# variable "availability" {
#   type        = string
#   description = "The availability type of the cluster."
#   default     = "SPOT_WITH_FALLBACK_AZURE"
# }

# variable "first_on_demand" {
#   type        = number
#   description = "The number of on-demand instances to start when the cluster is created."
#   default     = 1
# }

# variable "spot_bid_max_price" {
#   type        = number
#   description = "The maximum price you are willing to pay for Spot Instances."
#   default     = 100
# }

# variable "ResourceClass" {
#   type        = string
#   description = "The resource class of the Databricks cluster."
#   default     = "SingleNode"
# }

# variable "driver_node_type_id" {
#   type        = string
#   description = "The ID of the driver node type for the cluster."
#   default     = ""
# }

# variable "instance_pool_id" {
#   type        = string
#   description = "The ID of the instance pool to use for the cluster."
#   default     = ""
# }

# variable "driver_instance_pool_id" {
#   type        = string
#   description = "The ID of the instance pool for the driver nodes of the cluster."
#   default     = ""
# }

# variable "policy_id" {
#   type        = string
#   description = "The ID of the policy to be applied to the cluster."
#   default     = null
# }

# variable "single_user_name" {
#   type        = string
#   description = "The username for the single user of the cluster."
#   default     = ""
# }

# variable "idempotency_token" {
#   type        = string
#   description = "The token used to ensure idempotent updates."
#   default     = ""
# }

# variable "ssh_public_keys" {
#   type    = list(string)
#   description = "Public SSH keys for accessing the cluster."
#    default = ["public_key_1", "public_key_2"]
# }

# variable "DD_API_KEY" {
#   type        = string
#   description = "API key for Datadog."
# }

# variable "DD_ENV" {
#   type        = string
#   description = "Environment for Datadog."
#   default     = "production"
# }


# variable "spark_conf" {
#   type        = map(any)
#   description = "Additional Spark configurations for the cluster."
#   default     = {
#     "spark.databricks.io.cache.enabled"      = true
#     "spark.databricks.io.cache.maxDiskUsage" = "50g"
#     "spark.databricks.io.cache.maxMetaDataCache" = "1g"
#     "spark.databricks.repl.allowedLanguages" = "python,sql"
#   }
# }







