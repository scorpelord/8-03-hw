###cloud vars
variable "token" {
  type        = string
  description = "y0__xC6tL7SAxjB3RMg_OrOsRTEhon6oHyjKVWh_PrZCQXuojerAg"
}

variable "cloud_id" {
  type        = string
  description = "b1gm2hhvpo0k8vknjufs"
}

variable "folder_id" {
  type        = string
  description = "b1gnttbof2828gavj87b"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "ru-central1-a"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

### VM variables
variable "each_vm" {
  type = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    disk_volume = number
  }))
  default = [
    {
      vm_name     = "main"
      cpu         = 4
      ram         = 8
      disk_volume = 20
    },
    {
      vm_name     = "replica"
      cpu         = 2
      ram         = 4
      disk_volume = 15
    }
  ]
  description = "Parameters for database VMs"
}
