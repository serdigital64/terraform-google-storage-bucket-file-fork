#
# Google Storage Bucket
#

output "google_storage_bucket" {
  description = "Google Storage Bucket Attributes"
  value       = google_storage_bucket.main
  sensitive   = false
}
