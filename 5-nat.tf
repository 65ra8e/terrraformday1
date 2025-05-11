# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "nat" {
  name   = "nat"
  router = google_compute_router.router.name
  region = var.region

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.imfromseattle.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "nat" {
  name         = "nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
    region       = var.region

  
}

resource "google_compute_router_nat" "nat2" {
  name   = "nat2"
  router = google_compute_router.router2.name
  region = var.region2

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.tokyo.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat2.self_link]
}

resource "google_compute_address" "nat2" {
  name         = "nat2"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
    region       = var.region2

  
}
resource "google_compute_router_nat" "nat3" {
  name   = "nat3"
  router = google_compute_router.router3.name
  region = var.region3

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.iowa.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat3.self_link]
}

resource "google_compute_address" "nat3" {
  name         = "nat3"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
    region       = var.region3

  
}
resource "google_compute_router_nat" "nat4" {
  name   = "nat4"
  router = google_compute_router.router4.name
  region = var.region4

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.southamerica.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat4.self_link]
}

resource "google_compute_address" "nat4" {
  name         = "nat4"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
    region       = var.region4
  
}

#eighth
 