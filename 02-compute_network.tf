resource "google_compute_network" "myvpc" {
  name = "vpc1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "mysubnet" {
  name          = "subnet1"
  region        = "us-central1"
  ip_cidr_range = "10.128.0.0/24"
  network       = google_compute_network.myvpc.id
}