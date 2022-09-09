# /bin/bash
export internal_ip_address_app_yandex_cloud=$(< output.json jq -r '.internal_ip_address_app_yandex_cloud | .value')
export internal_ip_address_db01_yandex_cloud=$(< output.json jq -r '.internal_ip_address_db01_yandex_cloud | .value')
export internal_ip_address_db02_yandex_cloud=$(< output.json jq -r '.internal_ip_address_db02_yandex_cloud | .value')
export internal_ip_address_gitlab_yandex_cloud=$(< output.json jq -r '.internal_ip_address_gitlab_yandex_cloud | .value')
export internal_ip_address_monitoring_yandex_cloud=$(< output.json jq -r '.internal_ip_address_monitoring_yandex_cloud | .value')
export internal_ip_address_proxy_wan_yandex_cloud=$(< output.json jq -r '.internal_ip_address_proxy_wan_yandex_cloud | .value')
export internal_ip_address_runner_yandex_cloud=$(< output.json jq -r '.internal_ip_address_runner_yandex_cloud | .value')
envsubst < hosts.j2 > ../ansible/hosts
