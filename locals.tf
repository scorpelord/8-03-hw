locals {
  vm_web_name = "${var.vm_web_name}-${var.default_zone}"
  vm_db_name  = "${var.vm_db_name}-${var.vm_db_zone}"

  vm_web_full_name = "project-${var.vm_web_name}-${var.default_zone}"
  vm_db_full_name  = "project-${var.vm_db_name}-${var.vm_db_zone}"
  
  vms_info = {
    web = {
      name      = local.vm_web_name
      full_name = local.vm_web_full_name
      zone      = var.default_zone
      cores     = var.vm_web_cores
    }
    db = {
      name      = local.vm_db_name
      full_name = local.vm_db_full_name
      zone      = var.vm_db_zone
      cores     = var.vm_db_cores
    }
  }
}
