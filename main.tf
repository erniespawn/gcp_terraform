provider "google" {
  project = "github-actions-384318"
  credentials = file("deploykey/github-actions-384318-3d848ec90846.json")
  region = "europe-west4"
  zone = "europe-west4-a"
}


resource "google_compute_instance" "my_instance" {
  name = "terraform-instance"
  machine_type = "f1-micro"
  zone = "europe-west4-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
