
resource "yandex_compute_disk" "storage_disks" {
  count = 3
  
  name     = "storage-disk-${count.index + 1}"
  type     = "network-hdd"
  zone     = var.default_zone
  size     = 1 # 1 Гб
  block_size = 4096

  labels = {
    environment = "develop"
    purpose     = "storage"
  }
}

resource "yandex_compute_instance" "storage" {
  name        = "storage"
  platform_id = "standard-v3"
  zone        = var.default_zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8vmcue7aajpmeo39kk" 
      size     = 10
    }
  }

  dynamic "secondary_disk" {
    for_each = { for idx, disk in yandex_compute_disk.storage_disks : idx => disk.id }
    content {
      disk_id = secondary_disk.value
    }
  }

  network_interface {
    subnet_id = data.yandex_vpc_subnet.develop.id
    nat       = true
    security_group_ids = [yandex_vpc_security_group.db_sg.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${local.ssh_public_key}"
  }

  scheduling_policy {
    preemptible = true
  }

  depends_on = [yandex_compute_disk.storage_disks]
}
