resource "google_storage_bucket" "ehis-bucket" {
  name          = "ehis-bucket"
  location      = "us-central1"
  force_destroy = true

 uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_object" "index" {
 name         = "index.html"
 source       = "/Users/ehisosunde/Documents/TheoWAF/class7.5/GCP/Homework/Infra-HW-6/index.html"
 bucket       = google_storage_bucket.ehis-bucket.id
}

resource "google_storage_bucket_object" "error" {
 name         = "404.html"
 source       = "/Users/ehisosunde/Documents/TheoWAF/class7.5/GCP/Homework/Infra-HW-6/error.html"
 bucket       = google_storage_bucket.ehis-bucket.id
}

resource "google_storage_bucket_iam_member" "public_viewer" {
  bucket = google_storage_bucket.ehis-bucket.name
  role   = "roles/storage.objectViewer" 
  member = "allUsers"
}