output "cluster_id" {
  value = mongodbatlas_advanced_cluster.mongo_atlas_cluster.id
}

output "connection_strings" {
  value = mongodbatlas_advanced_cluster.mongo_atlas_cluster.connection_strings
}
