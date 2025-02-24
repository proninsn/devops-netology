# devops-netology
homeworks netology
---
Hello netology!!!

В будущем благодаря добавленному `.gitignore` будут проигнорированы следующие файлы:
- Файлы сосотояния:
    - *.tfstate
    - *.tfstate.*
- Файлы, в котором хранятся записи только об ошибках экстренного завершения программы:
    - crash.log
    - crash.*.log
- Файлы со значением переменных:
    - *.tfvars
    - *.tfvars.json
- Файлы переопределения, поскольку они обычно используются для локального переопределения ресурсов и поэтому не регистрируются:
    - override.tf
    - override.tf.json
    - *_override.tf
    - *_override.tf.json
- Игнорировать временные файлы информации о блокировке, созданные terraform apply:
    - .terraform.tfstate.lock.info
- Игнорировать конфигурационные файлы CLI
    - .terraformrc
    - terraform.rc