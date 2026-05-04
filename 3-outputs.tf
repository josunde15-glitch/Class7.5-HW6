# output "vpc_name" {
#   description = "My first vpc network"
#   value       = google_compute_network.vpc_one.name
# }
output "google_storage_bucket_object_index_public_url" {
  value = google_storage_bucket_object.index.self_link
}