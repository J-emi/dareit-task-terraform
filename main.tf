# Create new virtual machine

resource "google_compute_instance" "dareit-vm-ci" {
  name         = "dareit-vm-tf-ci"
  machine_type = "e2-medium"
  zone         = "europe-north1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

# Create new bucket

resource "google_storage_bucket" "static" {
 project       = "winged-plate-378113"
 name          = "jch-dareit-terraform-auto-bucket"
 location      = "EU"
 storage_class = "STANDARD"
}
