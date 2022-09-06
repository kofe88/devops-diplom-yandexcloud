terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone                      = "ru-central1-a"
}

data "yandex_iam_user" "kofe88" {
  login = "fedorov.kofe88"
}

data "yandex_iam_service_account" "my-netology" {
  service_account_id = "ajesg66dg5r1ahte7mqd"
}

resource "yandex_storage_bucket" "state" {
  access_key = "YCA"
  secret_key = "YCP"
  # access_key pulled from $YC_STORAGE_ACCESS_KEY
  # secret_key pulled from $YC_STORAGE_SECRET_KEY
  bucket = "my-netology-bucket"
  force_destroy = true
}
