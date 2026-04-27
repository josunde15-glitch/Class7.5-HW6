output "vpc_name" {
  description = "My first vpc network"
  value       = google_compute_network.vpc_one.name
}
