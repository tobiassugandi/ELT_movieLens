terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "storage" {
  source      = "./modules/storage_bucket"
  bucket_name = var.bucket_name
  location    = var.region
}

module "bigquery" {
  source     = "./modules/bigquery_dataset"
  project_id = var.project_id
  dataset_id = var.dataset_id
  location   = var.region
}