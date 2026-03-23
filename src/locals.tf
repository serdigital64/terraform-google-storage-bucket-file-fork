locals {
  #
  # Shared
  #

  shared__labels = {
    at64_shared__automated      = "true"
    at64_shared__module_type    = "terraform"
    at64_shared__module_name    = "terraform-google-storage-bucket-file"
    at64_shared__module_version = "1-0-0"
  }

  shared__name_instance = "${var.shared__name}-${format("%04d", random_integer.main.result)}"

  #
  # Google Storage Bucket
  #

  google_storage_bucket = {
    name                        = "${var.shared__prefix.google_storage_bucket}-${local.shared__name_instance}"
    uniform_bucket_level_access = true
    force_destroy               = true
    public_access_prevention    = "enforced"
    labels = merge(
      local.shared__labels,
      var.google_storage_bucket.labels
    )
    versioning = {
      enabled = true
    }
  }
}
