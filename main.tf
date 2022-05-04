terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
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