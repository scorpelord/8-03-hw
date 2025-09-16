resource "local_file" "ansible_inventory" {
  content = templatefile("inventory.tpl", {
    webservers = yandex_compute_instance.web[*]
    databases  = values(yandex_compute_instance.db)[*]
    storage    = [yandex_compute_instance.storage]
  })
  filename = "inventory.ini"
}
