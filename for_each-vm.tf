locals {
  db_vms = {
    for vm in var.each_vm : vm.vm_name => vm
  }
}

resource "yandex_compute_instance" "db" {
  for_each = local.db_vms

  name        = each.key
  hostname    = each.key
  platform_id = "standard-v3"
  zone        = var.yc_zone

  resources {
    cores  = each.value.cpu
    memory = each.value.ram
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size     = each.value.disk_volume
    }
  }

  network_interface {
    subnet_id = data.yandex_vpc_subnet.default.id  
    nat       = true
    security_group_ids = [yandex_vpc_security_group.db_sg.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${local.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = true
  }
}
