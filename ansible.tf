resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/inventory.tpl", {
    webservers = yandex_compute_instance.web
    databases  = yandex_compute_instance.db
    storage    = [yandex_compute_instance.storage]
  })
  filename = "${path.module}/inventory.ini"
}
