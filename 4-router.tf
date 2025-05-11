resource "google_compute_router" "router" {
  name    = "router"
  network = google_compute_network.main.id
  region  = var.region
  
}

resource "google_compute_router" "router2" {
  name    = "router2"
  network = google_compute_network.main.id
  region  = var.region2
  
}

resource "google_compute_router" "router3" {
  name    = "router3"
  network = google_compute_network.main2.id
  region  = var.region3
  
}  
 
resource "google_compute_router" "router4" {
  name    = "router4"
  network = google_compute_network.main2.id
  region  = var.region4
  
}

