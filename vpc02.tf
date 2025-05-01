resource "google_compute_network" "main" {
  name                            = "main"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

     

}
resource "google_compute_subnetwork" "mysubnet" {
  name          = "mysubnet"
 ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.main.id
  private_ip_google_access = true
   

}

resource "google_compute_subnetwork" "mysubnet2" {
  name          = "mysubnet2"
  ip_cidr_range = var.ip_cidr_range2
  region        = var.region2
  network       = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_firewall" "http" {
  name    = "http"
  network = google_compute_network.main.id
  

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
  
}

 