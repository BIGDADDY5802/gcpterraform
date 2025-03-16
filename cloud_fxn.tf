#2-cloud_fxn.tf

resource "google_storage_bucket_object" "function_archive" {
  name   = "function-source.zip"
  bucket = google_storage_bucket.bucket.name
  source = "path/to/your/function-source.zip"
}

resource "google_cloudfunctions_function" "function" {
  name                  = "my-function"
  description           = "My Cloud Function"
  runtime               = "python39"
  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.function_archive.name
  trigger_http          = true
  entry_point           = "main"
}
