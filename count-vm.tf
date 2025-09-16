resource "yandex_compute_instance" "web" {
  count       = 2
  name        = "web-${count.index + 1}" # web-1 и web-2
  platform_id = "standard-v3"
  zone        = var.default_zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8vmcue7aajpmeo39kk" # Ubuntu 22.04 LTS
      size     = 10
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

  depends_on = [yandex_compute_instance.db]
}
