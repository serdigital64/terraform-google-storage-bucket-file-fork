#
# Shared
#

variable "shared__name" {
  description = "Name seed to be used for naming generated module objects"
  sensitive   = false
  nullable    = false
  type        = string
}

variable "shared__prefix" {
  description = "Prefix definition for naming generated module objects"
  sensitive   = false
  nullable    = false
  type = object({
    google_storage_bucket = string
  })
  default = {
    google_storage_bucket = "gsb"
  }
}

#
# Google Storage Bucket
#

variable "google_storage_bucket" {
  description = "Google Storage Bucket Attributes"
  sensitive   = false
  nullable    = false
  type = object({
    location      = string
    project       = string
    storage_class = optional(string, "STANDARD")
    labels        = optional(map(string))
  })
}
