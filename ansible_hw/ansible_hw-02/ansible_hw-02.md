# Домашнее задание к занятию 2 «Работа с Playbook» - Пронин Сергей Николаевич

## Основная часть

1. Подготовьте свой inventory-файл `prod.yml`.
2. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает [vector](https://vector.dev). Конфигурация vector должна деплоиться через template файл jinja2. От вас не требуется использовать все возможности шаблонизатора, просто вставьте стандартный конфиг в template файл. Информация по шаблонам по [ссылке](https://www.dmosk.ru/instruktions.php?object=ansible-nginx-install). не забудьте сделать handler на перезапуск vector в случае изменения конфигурации!
3. При создании tasks рекомендую использовать модули: `get_url`, `template`, `unarchive`, `file`.
4. Tasks должны: скачать дистрибутив нужной версии, выполнить распаковку в выбранную директорию, установить vector.
5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.
6. Попробуйте запустить playbook на этом окружении с флагом `--check`.
7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.
8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.
9. Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги. Пример качественной документации ansible playbook по [ссылке](https://github.com/opensearch-project/ansible-playbook). Так же приложите скриншоты выполнения заданий №5-8
10. Готовый playbook выложите в свой репозиторий, поставьте тег `08-ansible-02-playbook` на фиксирующий коммит, в ответ предоставьте ссылку на него.

## Решение:

```markdown
# Ansible Playbook for ClickHouse and Vector

This playbook installs and configures ClickHouse (via Docker) and Vector on Ubuntu systems.

## Playbook Parameters

### ClickHouse
- `clickhouse_version`: Version of ClickHouse to install (default: "22.3.3.44")

### Vector
- `vector_version`: Version of Vector to install (default: "0.28.1")
- `vector_config_dir`: Directory for Vector configuration files (default: "/etc/vector")

## Tags

Available tags for selective execution:
- `clickhouse`: Only execute ClickHouse tasks
- `vector`: Only execute Vector tasks

## Usage Examples

1. Run full playbook:
   ```bash
   ansible-playbook -i prod.yml site.yml
```

![img-ansible-02.01](images/img-ansible-02.01.JPG)

![img-ansible-02.02](images/img-ansible-02.02.JPG)

![img-ansible-02.03](images/img-ansible-02.03.JPG)

![img-ansible-02.04](images/img-ansible-02.04.JPG)