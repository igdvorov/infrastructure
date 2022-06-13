terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "s3-dvorov-ivan-04-terraform"
    region     = "ru-central1"
    key        = "tf-s3-my-state.tfstate"
    access_key = "YCAJETapKIAY7h-8ikSNGM_K4"
    secret_key = "YCOVp_YtZaQiLdb8czXlsZJbw0PFpdVG7JfN0Bjs"

    skip_region_validation      = true
    skip_credentials_validation = true
  }

}

resource "yandex_compute_instance" "vm-1" {
  name = var.yc_vm_name

  resources {
    cores  = var.yc_cores
    memory = var.yc_memory
  }

  boot_disk {
    initialize_params {
      image_id = var.yc_image_id
    }
  }

  network_interface {
    subnet_id = var.yc_subnet_id
    nat       = true
  }

  metadata = {
    user-data = "${file("./meta.txt")}"
  }
}


output "ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}