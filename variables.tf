variable "project_id" {
  description = "The ID of the MongoDB Atlas project"
  type        = string
}

variable "cluster_name" {
  description = "The name of the MongoDB Atlas cluster"
  type        = string
}

variable "cluster_type" {
  description = "The type of the MongoDB Atlas cluster"
  type        = string
  default     = "SHARDED"
}

variable "backup_enabled" {
  description = "Enable or disable backup for the cluster"
  type        = bool
  default     = true
}

variable "replication_specs" {
  description = "List of replication specifications"
  type = list(object({
    region_configs = list(object({
      instance_size = string
      node_count    = number
      provider_name = string
      priority      = number
      region_name   = string
    }))
  }))
}

variable "javascript_enabled" {
  description = "Enable or disable JavaScript in the cluster"
  type        = bool
  default     = true
}

variable "oplog_size_mb" {
  description = "Oplog size in MB"
  type        = number
  default     = 991
}

variable "sample_refresh_interval_bi_connector" {
  description = "BI Connector sample refresh interval"
  type        = number
  default     = 300
}
