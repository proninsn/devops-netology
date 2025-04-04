# Домашнее задание к занятию «Системы контроля версий» - Пронин Сергей Николаеваич

Hello netology!!!

- **/.terraform/*:
Игнорирует все содержимое директории .terraform, которая создается Terraform для хранения плагинов, модулей и других зависимостей. Эта директория обычно содержит временные данные, которые не нужно отслеживать в Git.

- *.tfstate:
Игнорирует файлы с расширением .tfstate. Эти файлы содержат состояние инфраструктуры, управляемой Terraform. Они могут содержать конфиденциальные данные (например, пароли, ключи доступа), и их не рекомендуется хранить в репозитории.

- *.tfstate.*:
Игнорирует файлы, начинающиеся с .tfstate. (например, .tfstate.backup). Это резервные копии или дополнительные файлы состояния.

- crash.log:
Игнорирует файл crash.log, который может создаваться Terraform в случае аварийного завершения работы.

- crash.*.log:
Игнорирует файлы, начинающиеся с crash. и заканчивающиеся на .log (например, crash.12345.log). Это логи аварийных завершений работы Terraform.

- *.tfvars:
Игнорирует файлы с расширением .tfvars. Эти файлы обычно содержат переменные, которые могут включать конфиденциальные данные (например, ключи API, пароли).

- *.tfvars.json:
Игнорирует файлы с расширением .tfvars.json. Это JSON-версия файлов переменных, которые также могут содержать конфиденциальные данные.

- override.tf:
Игнорирует файл override.tf, который используется для переопределения конфигураций Terraform. Обычно такие файлы содержат локальные изменения, которые не нужно коммитить в репозиторий.

- override.tf.json:
Игнорирует файл override.tf.json, который является JSON-версией файла переопределения конфигураций.

- *_override.tf:
Игнорирует файлы, заканчивающиеся на _override.tf. Это дополнительные файлы переопределения конфигураций.

- *_override.tf.json:
Игнорирует файлы, заканчивающиеся на _override.tf.json. Это JSON-версии файлов переопределения конфигураций.

- .terraform.tfstate.lock.info:
Игнорирует файл .terraform.tfstate.lock.info, который создается Terraform для блокировки состояния во время операций, чтобы предотвратить одновременное изменение состояния несколькими пользователями.

- .terraformrc:
Игнорирует файл .terraformrc, который содержит пользовательские настройки конфигурации Terraform. Обычно этот файл содержит локальные настройки, которые не нужно коммитить в репозиторий.

- terraform.rc:
Игнорирует файл terraform.rc, который является альтернативным именем для файла пользовательских настроек Terraform.
