# MongoDB Atlas Cluster Module

This Terraform module creates a MongoDB Atlas cluster.

## Usage

```hcl
module "mongo_atlas_cluster" {
  source = "git::https://github.com/yourusername/mongo_atlas_cluster_module.git"

  project_id = "your_project_id"
  name       = "your_cluster_name"
  # other variables...
}
```
