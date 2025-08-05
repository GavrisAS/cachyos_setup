# Ansible Playbooks for CachyOS
Настройка рабочей системы после установки

Desktop
   ```
   set -x PLAYBOOK desktop.yml
   set -x EXTRA_ARGS "--skip-tags vpn"
   curl -sL https://raw.githubusercontent.com/GavrisAS/cachyos_setup/main/setup.fish | fish
   ```

В плейбуке установлен тэг `vpn` для пакетов к которым нет доступа без VPN.

Есть 3 варианта запуска:

 - без переменной EXTRA_ARGS - будут выполнены все задачи
 - значение переменной "--skip-tags vpn" - будут выполнены все задачи, кроме тех, что помечены тэгом 'vpn'
 - значение переменной "--tags vpn" - будут выполнены только задачи, помеченные тэгом 'vpn'
