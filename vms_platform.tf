### vm_web variables

variable "vm_web_name" {
  type        = string
  default     = "develop-vm"
  description = "VM web name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM web platform ID"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "VM web number of cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 4
  description = "VM web memory in GB"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 100
  description = "VM web core fraction percentage"
}

variable "vm_web_disk_type" {
  type        = string
  default     = "network-ssd"
  description = "VM web boot disk type"
}

variable "vm_web_disk_size" {
  type        = number
  default     = 10
  description = "VM web boot disk size in GB"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = false
  description = "VM web preemptible setting"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "VM web NAT setting"
}

variable "vm_web_serial_port_enable" {
  type        = string
  default     = "1"
  description = "VM web serial port enable setting"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM web image family"
}

### vm_db variables

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "VM db name"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "VM db platform ID"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "VM db number of cores"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "VM db memory in GB"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "VM db core fraction percentage"
}

variable "vm_db_disk_type" {
  type        = string
  default     = "network-ssd"
  description = "VM db boot disk type"
}

variable "vm_db_disk_size" {
  type        = number
  default     = 10
  description = "VM db boot disk size in GB"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = false
  description = "VM db preemptible setting"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "VM db NAT setting"
}

variable "vm_db_serial_port_enable" {
  type        = string
  default     = "1"
  description = "VM db serial port enable setting"
}

variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM db image family"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "VM db zone"
}
