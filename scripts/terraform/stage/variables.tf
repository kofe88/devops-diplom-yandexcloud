# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1gg2ftubre1m9grd2id"
}

# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1g7sa087ssu373i3ubo"
}

variable "service_account_id" {
  default = "ajesg66dg5r1ahte7mqd"
}

# ID yc compute image list Ubuntu 22.04 LTS
variable "ubuntu-base" {
  default = "fd8uoiksr520scs811jl"
}

# ID yc compute image list Ubuntu 20.04 LTS
variable "ubuntu-20" {
  default = "fd8kdq6d0p8sij7h5qe3"
}

# https://cloud.yandex.ru/marketplace/products/yc/nat-instance-ubuntu-18-04-lts
variable "ubuntu-proxy" {
  default = "fd83slullt763d3lo57m"
}


variable "lan_proxy_ip" {
  default = "192.168.101.100"
}