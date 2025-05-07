resource "google_compute_instance" "myinstance" {
  name         = "myinstance"
  machine_type = "e2-micro"
    zone         = "us-west1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10   
    }
  }

  network_interface {
    network    = google_compute_network.main.id
    subnetwork = google_compute_subnetwork.imfromseattle.id
    access_config {

      // Ephemeral IP
    }
  }

  metadata_startup_script = file("${path.module}/startup.sh")

 
}

resource "google_compute_instance" "myinstance2" {
  name         = "myinstance2"
  machine_type = "e2-micro"
    zone         = "asia-east1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10   
    }
  }

  network_interface {
    network    = google_compute_network.main.id
    subnetwork = google_compute_subnetwork.tokyo.id
    access_config {

      // Ephemeral IP
    }
  }

  metadata_startup_script = file("${path.module}/startup.sh")

 
}
resource "google_compute_instance" "myinstance3" {
  name         = "myinstance3"
  machine_type = "e2-micro"
    zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10   
    }
  }

  network_interface {
    network    = google_compute_network.main.id
    subnetwork = google_compute_subnetwork.iowa.id
    access_config {

      // Ephemeral IP
    }
  }

  metadata_startup_script = file("${path.module}/startup.sh")

 
}
resource "google_compute_instance" "myinstance4" {
  name         = "myinstance4"
  machine_type = "e2-micro"
    zone         = "southamerica-east1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10   
    }
  }

  network_interface {
    network    = google_compute_network.main.id
    subnetwork = google_compute_subnetwork.southamerica.id
    access_config {

      // Ephemeral IP
    }
  }

  metadata_startup_script = file("${path.module}/startup.sh")

 
}