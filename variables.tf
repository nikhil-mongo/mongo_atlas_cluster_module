variable "project_id" {
  description = "The ID of the project in MongoDB Atlas"
  type        = string
}

variable "name" {
  description = "The name of the MongoDB Atlas cluster"
  type        = string
}

variable "cluster_type" {
  description = "The type of cluster (REPLICASET, SHARDED)"
  type        = string
  default     = "REPLICASET"
}

variable "num_shards" {
  description = "Number of shards in the cluster"
  type        = number
  default     = 1
}

variable "pit_enabled" {
  description = "Whether PIT backups are enabled"
  type        = bool
  default     = false
}

variable "region_name_1" {
  description = "Region name for the first region"
  type        = string
}

variable "electable_nodes_1" {
  description = "Number of electable nodes in the first region"
  type        = number
}

variable "priority_1" {
  description = "Priority for the first region"
  type        = number
}

variable "read_only_nodes_1" {
  description = "Number of read-only nodes in the first region"
  type        = number
  default     = 0
}

variable "analytics_nodes_1" {
  description = "Number of analytics nodes in the first region"
  type        = number
  default     = 0
}

# Repeat for other regions

variable "javascript_enabled" {
  description = "Whether JavaScript is enabled"
  type        = bool
  default     = true
}

variable "minimum_enabled_tls_protocol" {
  description = "Minimum TLS protocol version"
  type        = string
  default     = "TLS1_2"
}

variable "cloud_backup" {
  description = "Enable cloud backup"
  type        = bool
  default     = true
}

variable "auto_scaling_disk_gb_enabled" {
  description = "Enable auto-scaling for disk size"
  type        = bool
  default     = true
}

variable "mongo_db_major_version" {
  description = "MongoDB major version"
  type        = string
  default     = "7.0"
}

variable "provider_name" {
  description = "Cloud provider name"
  type        = string
  default     = "AWS"
}

variable "disk_size_gb" {
  description = "Disk size in GB"
  type        = number
  default     = 250
}

variable "provider_disk_iops" {
  description = "Provider disk IOPS"
  type        = number
  default     = 3600
}

variable "provider_volume_type" {
  description = "Provider volume type"
  type        = string
  default     = "PROVISIONED"
}

variable "provider_instance_size_name" {
  description = "Provider instance size name"
  type        = string
  default     = "M30"
}
