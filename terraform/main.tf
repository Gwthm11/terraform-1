terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("/home/tamilarasiiprimed/terraform/dbcebqgcs_gcp/stalwart-cable-335111-08045f65799d.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

module "vm_nt1" {
  source = "/home/tamilarasiiprimed/terraform/dbcebqgcs_gcp"

  project_id = var.project_id

  region = var.region

  zone = var.zone

  network_name = var.network_name2

  vm_name = var.vm_name

  vm_machine_type = var.vm_machine_type

}

module "vm_nt3" {
  source = "/home/tamilarasiiprimed/terraform/dbcebqgcs_gcp"

  project_id = var.project_id

  region = var.region

  zone = var.zone

  network_name = var.network_name3

  vm_name = var.vm_name3

  vm_machine_type = var.vm_machine_type

}



