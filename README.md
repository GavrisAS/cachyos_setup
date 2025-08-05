# Ansible Playbooks for CashyOS
Настройка рабочей системы после установки

Desktop
   ```
   set -x PLAYBOOK desktop.yml
   set -x EXTRA_ARGS "--skip-tags vpn"
   curl -sL https://raw.githubusercontent.com/GavrisAS/cachyos_setup/main/setup.fish | fish
   ```
