resource "mongodbatlas_advanced_cluster" "cluster" {
  project_id    = var.project_id
  name          = var.cluster_name
  cluster_type  = var.cluster_type
  backup_enabled = var.backup_enabled

  dynamic "replication_specs" {
    for_each = var.replication_specs
    content {
      dynamic "region_configs" {
        for_each = replication_specs.value.region_configs
        content {
          electable_specs {
            instance_size = region_configs.value.instance_size
            node_count    = region_configs.value.node_count
          }
          provider_name = region_configs.value.provider_name
          priority      = region_configs.value.priority
          region_name   = region_configs.value.region_name
        }
      }
    }
  }

  advanced_configuration {
    javascript_enabled                   = var.javascript_enabled
    oplog_size_mb                        = var.oplog_size_mb
    sample_refresh_interval_bi_connector = var.sample_refresh_interval_bi_connector
  }
}
