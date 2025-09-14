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
      cores     = var.vms_resources["web"].cores
      memory    = var.vms_resources["web"].memory
    }
    db = {
      name      = local.vm_db_name
      full_name = local.vm_db_full_name
      zone      = var.vm_db_zone
      cores     = var.vms_resources["db"].cores
      memory    = var.vms_resources["db"].memory
    }
  }
}
