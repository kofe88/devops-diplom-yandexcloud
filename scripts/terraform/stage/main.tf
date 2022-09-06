provider "yandex" {
  #token = "t1.9euelZrIjpmSmI_KxsrJnpfPl47Lnu3rnpWakp6YlZrLj4zJyJHNjY2Mkc3l9PdEYEVn-e9GBgaE3fT3BA9DZ_nvRgYGhA.YwSMz3WdOYld9ur_x3pFEPrXOmYcuawxG187vYiPqu3ceztYAfh824kvYV2zn0rO7AHlby0TWKvJ-F20YAWpCg"
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
    secret_key = "YCP"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

