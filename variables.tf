###cloud vars

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

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMn+7vXES0vMXiEJNf24cTmed8tWeoJRn8tlCGusvlCGusv+HN root@vm1"
description = "ssh-keygen -t ed25519"
}
