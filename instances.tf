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
    subnetwork = google_compute_subnetwork.mysubnet.id
    access_config {

      // Ephemeral IP
    }
  }

  metadata_startup_script = file("${path.module}/startup.sh")

 
}