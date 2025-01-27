resource "google_storage_bucket" "data_lake_bucket" {
  name     = var.bucket_name
  location = var.location

  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy

  versioning {
    enabled = var.versioning
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_rule_age
    }
  }
}