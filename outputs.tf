output "cluster_id" {
  value = mongodbatlas_cluster.mongo_atlas_cluster.id
}

output "connection_strings" {
  value = mongodbatlas_cluster.mongo_atlas_cluster.connection_strings
}
