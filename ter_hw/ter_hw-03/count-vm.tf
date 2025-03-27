resource "yandex_compute_instance" "web" {
  count = 2
  name  = "web-${count.index + 1}"
  depends_on = [yandex_compute_instance.db]

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu_image.id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.example.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }
}