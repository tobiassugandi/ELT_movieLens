variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "bucket_name" {
  description = "Unique bucket name"
  type        = string
}

variable "region" {
  description = "The GCP region for resources"
  type        = string
  default     = "EUROPE-WEST6"
}

variable "dataset_id" {
  description = "BigQuery dataset ID"
  type        = string
  default     = "raw_data"
}