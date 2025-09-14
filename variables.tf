variable "vpc_name" {
  description = "Name of the VPC network"
  default     = "develop-network"
}

variable "default_zone" {
  description = "Default zone for resources"
  default     = "ru-central1-a"
}

variable "default_cidr" {
  description = "Default CIDR block for subnet"
  default     = ["10.1.0.0/24"]
}

variable "vms_ssh_root_key" {
  description = "SSH public key for VMs"
  type        = string
}
