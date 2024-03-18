workspace_name      = "dlh-db-workspace-01"
location            = "East US 2"
resource_group_name = "ius-lob-sand-inf-dlh-eu2-rg-01"
sku                 = "premium"
environment_tag     = "data-sand"
onwer               = "Rashmika Ramkumar"
subscription_id   =  "31324520-9b0f-447e-98f4-c8ac3667708d"
tenant_id   = "29dfe2bd-dc40-4934-8c75-8419c7ab1e30"

# cluster creation


host                   = "https://adb-302867268976868.8.azuredatabricks.net"
token                  = "dapi905df3d8faa2f35e2b9242782c74b4a8-3"
cluster_name           =  "intact_cluster"
spark_version          = "7.3.x-scala2.12"
autotermination_minutes = 20
min_workers            = 1
max_workers            = 50
# availability           = "SPOT_WITH_FALLBACK_AZURE"
# first_on_demand        = 1
# spot_bid_max_price     = 100
# ResourceClass          = "SingleNode"

#  driver_node_type_id     = ""
# instance_pool_id        = ""
# driver_instance_pool_id = ""
# policy_id               = null
# single_user_name        = ""
# idempotency_token       = ""
# ssh_public_keys         = []



# DD_API_KEY = ""
# DD_ENV     = "production"

# spark_conf = {
#   "spark.databricks.io.cache.enabled"      = true
#   "spark.databricks.io.cache.maxDiskUsage" = "50g"
#   "spark.databricks.io.cache.maxMetaDataCache" = "1g"
#   "spark.databricks.repl.allowedLanguages" = "python,sql"
# }
