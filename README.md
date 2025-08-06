# Automated configuration of CachyOS Linux using Ansible
Настройка рабочей системы после чистой установки.

Выполнить в терминале

   ```
   set -x PLAYBOOK desktop.yml
   set -x EXTRA_ARGS --skip-tags=vpn
   curl -sL https://raw.githubusercontent.com/GavrisAS/cachyos_setup/main/setup.fish | fish
   ```

В плейбуке установлен тэг `vpn` для пакетов к которым нет доступа без VPN.

Есть 3 варианта запуска:

| `EXTRA_ARGS`               | Выполнятся                                                 |
|----------------------------|------------------------------------------------------------|
| *(не задано)*              | все задачи                                                 |
| `--skip-tags=vpn`          | все задачи, кроме тех, что помечены тэгом `vpn`            |
| `--tags=vpn`               | только задачи, помеченные тэгом `vpn`                      |

