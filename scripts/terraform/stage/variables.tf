# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1gg2ftubre1m9grd2id"
}

# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1g7sa087ssu373i3ubo"
}

# ID yc compute image list Ubuntu 22.04 LTS
variable "ubuntu-base" {
  default = "fd8uoiksr520scs811jl"
}

# https://cloud.yandex.ru/marketplace/products/yc/nat-instance-ubuntu-18-04-lts
variable "ubuntu-proxy" {
  default = "fd83slullt763d3lo57m"
}


variable "lan_proxy_ip" {
  default = "192.168.101.100"
}