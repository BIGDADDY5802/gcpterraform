#3-bucket.tf

resource "google_storage_bucket" "bucket" {
  name     = "general-usage-bucket"
  location = "US"
}
