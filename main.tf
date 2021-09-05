provider "google" {
 project = "logical-essence-324915"
 region  = "asia-southeast2"
 zone    = "asia-southeast2-a"
}

resource "google_compute_instance" "vm_instance" {
 name         = "nasohi-instance"
 machine_type = "f1-micro"

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-10"
   }
 }

 network_interface {
   # A default network is created for all GCP projects
   network = "default"
   access_config {
   }
 }
}

resource "google_compute_network" "vpc_network" {
  name                    = "nasohi-network"
  auto_create_subnetworks = true
}


