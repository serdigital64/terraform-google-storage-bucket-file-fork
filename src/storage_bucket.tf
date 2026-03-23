resource "google_storage_bucket" "main" {
  location      = var.google_storage_bucket.location
  storage_class = var.google_storage_bucket.storage_class

  name                        = local.google_storage_bucket.name
  uniform_bucket_level_access = local.google_storage_bucket.uniform_bucket_level_access
  force_destroy               = local.google_storage_bucket.force_destroy
  labels                      = local.google_storage_bucket.labels
  public_access_prevention    = local.google_storage_bucket.public_access_prevention

  project = var.google_storage_bucket.project

  versioning {
    enabled = local.google_storage_bucket.versioning.enabled
  }
}
