terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.80"
    }
  }

  required_version = ">= 0.13"
}

provider "yandex" {
 #token     = var.yandex_token
  cloud_id  = "b1gv0sq28smr4ks52r3c"
  folder_id = "b1gumga3s4rdmbfda3qr"
  zone      = "ru-central1-a"
}
