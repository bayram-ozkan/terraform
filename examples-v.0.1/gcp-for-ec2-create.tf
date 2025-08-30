resource "google_compute_instance" "default" {
  project      = "gcp-cluster-447119"
  name         = "mywith-terraform"  # Geçerli bir ad
  machine_type = "e2-medium"         # Makine türü
  zone         = "us-central1-a"     # Bölge

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-focal-v20220712"  # Daha güncel bir LTS sürümü
      #image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}  # Harici IP atanmasını sağlar
  }
}
