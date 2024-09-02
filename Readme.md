# MongoDB Atlas Cluster Module

This Terraform module creates a MongoDB Atlas cluster with advanced configurations.

## Usage

```hcl
module "mongo_atlas_cluster" {
  source = "git::https://github.com/yourusername/mongo_atlas_cluster_module.git"

  project_id    = "your_project_id"
  cluster_name  = "your_cluster_name"

  replication_specs = [
    {
      region_configs = [
        {
          instance_size = "M10"
          node_count    = 3
          provider_name = "AWS"
          priority      = 7
          region_name   = "US_EAST_1"
        },
        {
          instance_size = "M10"
          node_count    = 2
          provider_name = "AZURE"
          priority      = 6
          region_name   = "US_EAST_2"
        }
      ]
    },
    {
      region_configs = [
        {
          instance_size = "M10"
          node_count    = 3
          provider_name = "AWS"
          priority      = 7
          region_name   = "US_EAST_1"
        },
        {
          instance_size = "M10"
          node_count    = 2
          provider_name = "AZURE"
          priority      = 6
          region_name   = "US_EAST_2"
        }
      ]
    }
  ]
}
