variable "dataset_id" {
  description = "The dataset ID for BigQuery"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "location" {
  description = "The location of the dataset"
  type        = string
  default     = "EUROPE-WEST6"
}

variable "delete_contents_on_destroy" {
  description = "Whether to delete the contents of the dataset when destroying"
  type        = bool
  default     = true
}