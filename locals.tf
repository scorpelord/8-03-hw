# Общие локальные переменные
locals {
  ssh_public_key = file("~/.ssh/id_rsa.pub")
}
