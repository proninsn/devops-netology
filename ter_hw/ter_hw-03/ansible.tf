locals {
  inventory_data = {
    webservers = [
      for vm in yandex_compute_instance.web : {
        name = vm.name,
        ip   = vm.network_interface[0].nat_ip_address,
        fqdn = vm.fqdn
      }
    ],
    databases = [
      for name, vm in yandex_compute_instance.db : {
        name = name,
        ip   = vm.network_interface[0].nat_ip_address,
        fqdn = vm.fqdn
      }
    ],
    storage = [{
      name = yandex_compute_instance.storage.name,
      ip   = yandex_compute_instance.storage.network_interface[0].nat_ip_address,
      fqdn = yandex_compute_instance.storage.fqdn
    }]
  }
}

resource "local_file" "inventory" {
  content  = templatefile("inventory.tpl", local.inventory_data)
  filename = "../ansible/inventory.ini"
}