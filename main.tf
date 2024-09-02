resource "mongodbatlas_advanced_cluster" "mongo_atlas_cluster" {
  project_id   = var.project_id
  name         = var.name
  cluster_type = var.cluster_type
  num_shards   = var.num_shards
  pit_enabled  = var.pit_enabled

  replication_specs {
    num_shards = var.num_shards
    regions_config {
      region_name     = var.region_name_1
      electable_nodes = var.electable_nodes_1
      priority        = var.priority_1
      read_only_nodes = var.read_only_nodes_1
      analytics_nodes = var.analytics_nodes_1
    }
    regions_config {
      region_name     = var.region_name_2
      electable_nodes = var.electable_nodes_2
      priority        = var.priority_2
      read_only_nodes = var.read_only_nodes_2
      analytics_nodes = var.analytics_nodes_2
    }
    regions_config {
      region_name     = var.region_name_3
      electable_nodes = var.electable_nodes_3
      priority        = var.priority_3
      read_only_nodes = var.read_only_nodes_3
      analytics_nodes = var.analytics_nodes_3
    }
  }

  advanced_configuration {
    javascript_enabled           = var.javascript_enabled
    minimum_enabled_tls_protocol = var.minimum_enabled_tls_protocol
  }

  cloud_backup                 = var.cloud_backup
  auto_scaling_disk_gb_enabled = var.auto_scaling_disk_gb_enabled
  mongo_db_major_version       = var.mongo_db_major_version

  provider_name               = var.provider_name
  disk_size_gb                = var.disk_size_gb
  provider_disk_iops          = var.provider_disk_iops
  provider_volume_type        = var.provider_volume_type
  provider_instance_size_name = var.provider_instance_size_name
}
