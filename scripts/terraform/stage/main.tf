provider "yandex" {
  token = "t1.9euelZrIjpmSmI"
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


terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "my-netology-bucket"
    region     = "ru-central1-a"
    key        = "terraform/state.tfstate"
    access_key = "YCA"
    secret_key = "YCN"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

