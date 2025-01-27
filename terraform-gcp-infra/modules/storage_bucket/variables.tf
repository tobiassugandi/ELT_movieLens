variable "bucket_name" {
  description = "The unique name of the storage bucket"
  type        = string
}

variable "location" {
  description = "The region for the storage bucket"
  type        = string
  default     = "EUROPE-WEST6"
}

variable "storage_class" {
  description = "The storage class of the bucket"
  type        = string
  default     = "STANDARD"
}

variable "uniform_bucket_level_access" {
  description = "Enforce uniform bucket level access"
  type        = bool
  default     = true
}

variable "versioning" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = true
}

variable "lifecycle_rule_age" {
  description = "Number of days before an object is deleted"
  type        = number
  default     = 2
}

variable "force_destroy" {
  description = "Whether to force bucket deletion"
  type        = bool
  default     = true
}