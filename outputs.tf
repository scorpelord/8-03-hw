output "vm_web_info" {
  description = "Information about the web VM"
  value = {
    instance_name = yandex_compute_instance.develop_vm.name
    external_ip   = yandex_compute_instance.develop_vm.network_interface[0].nat_ip_address
    fqdn          = yandex_compute_instance.develop_vm.fqdn
  }
}

output "vm_db_info" {
  description = "Information about the database VM"
  value = {
    instance_name = yandex_compute_instance.develop_db.name
    external_ip   = yandex_compute_instance.develop_db.network_interface[0].nat_ip_address
    fqdn          = yandex_compute_instance.develop_db.fqdn
  }
}
