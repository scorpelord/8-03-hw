terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.80.0"
    }
  }
}

provider "yandex" {
token      = "y0__xC6tL7SAxjB3RMg_OrOsRTEhon6oHyjKVWh_PrZCQXuojerAg"
  cloud_id  = "b1gm2hhvpo0k8vknjufs"
  folder_id = "b1gnttbof2828gavj87b"
  zone      = "ru-central1-a"
}
