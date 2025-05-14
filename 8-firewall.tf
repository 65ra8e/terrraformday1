resource "google_compute_firewall" "allow-ssh" {
  name                   = "allow-ssh"
  network                = google_compute_network.main.id
  
  allow {
    protocol       = "tcp"
    ports          = ["22"]
  }
    source_ranges  = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-http" {
  name                   = "allow-web"
  network                = google_compute_network.main.id

  allow {
    protocol       = "tcp"
    ports          = ["80", "443"]
  }

  source_ranges    = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-icmp" {
  name                   = "allow-icmp"
  network                = google_compute_network.main.id

  allow {
    protocol        = "icmp"
  }

  source_ranges     = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-rdp" {
  name                   = "allow-rdp"
  network                = google_compute_network.main.id
  
  allow {
    protocol         = "tcp"
    ports            = ["3389"]
  }
    source_ranges    = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-3001" {
  name                   = "allow-3001"
  network                = google_compute_network.main.id
    

  allow {
    protocol         = "tcp"
    ports            = ["3001"]
  }

  source_ranges      = ["0.0.0.0/0"]
}

############firewall rules for main2
 

resource "google_compute_firewall" "allow-ssh2" {
  name    = "allow-ssh2"
  network = google_compute_network.main2.id
    

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-http2" {
  name    = "allow-web2"
  network = google_compute_network.main2.id

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-icmp2" {
  name    = "allow-icmp2"
  network = google_compute_network.main2.id

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-rdp2" {
  name    = "allow-rdp2"
  network = google_compute_network.main2.id
  
  allow {
    protocol = "tcp"
    ports    = ["3389"]
    }

    source_ranges = ["0.0.0.0/0"]
  
}

resource "google_compute_firewall" "allow-3001-2" {
  name    = "allow-3001-2"
  network = google_compute_network.main2.id
    

  allow {
    protocol = "tcp"
    ports    = ["3001"]
  }

  source_ranges = ["0.0.0.0/0"]
}
 