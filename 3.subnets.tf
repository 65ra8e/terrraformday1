resource "google_compute_subnetwork" "imfromseattle" {
  name                     = var.subnetwork.imfromseattle.name
  ip_cidr_range            = var.subnetwork.imfromseattle.ip_cidr_range
  region                   = var.subnetwork.imfromseattle.region           
  network                  = google_compute_network.main.id
  private_ip_google_access = true
   

}

resource "google_compute_subnetwork" "tokyo" {
  name                     = var.subnetwork.tokyo.name
  ip_cidr_range            = var.subnetwork.tokyo.ip_cidr_range
  region                   = var.subnetwork.tokyo.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "iowa" {
  name                     = var.subnetwork.iowa.name
  ip_cidr_range            = var.subnetwork.iowa.ip_cidr_range
  region                   = var.subnetwork.iowa.region
  network                  = google_compute_network.main2.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "southamerica" {
  name                     = var.subnetwork.southamerica.name
  ip_cidr_range            = var.subnetwork.southamerica.ip_cidr_range
  region                   = var.subnetwork.southamerica.region
  network                  = google_compute_network.main2.id
  private_ip_google_access = true

}


 
