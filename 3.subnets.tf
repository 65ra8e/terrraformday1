resource "google_compute_subnetwork" "imfromseattle" {
  name          = "imfromseattle"
  ip_cidr_range = var.ip_cidr_range                  
  region        = var.region
  network       = google_compute_network.main.id
  private_ip_google_access = true
   

}

resource "google_compute_subnetwork" "tokyo" {
  name          = "tokyo"
  ip_cidr_range = var.ip_cidr_range2
  region        = var.region2
  network       = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "iowa" {
  name          = "iowa"
  ip_cidr_range = var.ip_cidr_range3
  region        = var.region3
  network       = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "southamerica" {
  name          = "southamerica"
  ip_cidr_range = var.ip_cidr_range4
  region        = var.region4
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
