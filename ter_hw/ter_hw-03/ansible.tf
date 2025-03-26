data "template_file" "inventory" {
  template = file("inventory.tpl")
  vars = {
    webservers = join("\n", [
      for vm in yandex_compute_instance.web : 
      "${vm.name} ansible_host=${vm.network_interface.0.nat_ip_address} fqdn=${vm.fqdn}"
    ]),
    databases = join("\n", [
      for name, vm in yandex_compute_instance.db : 
      "${name} ansible_host=${vm.network_interface.0.nat_ip_address} fqdn=${vm.fqdn}"
    ]),
    storage = "storage ansible_host=${yandex_compute_instance.storage.network_interface.0.nat_ip_address} fqdn=${yandex_compute_instance.storage.fqdn}"
  }
}

resource "local_file" "inventory" {
  content  = data.template_file.inventory.rendered
  filename = "../ansible/inventory.ini"
}