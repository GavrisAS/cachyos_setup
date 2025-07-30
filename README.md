# Ansible Playbooks for CashyOS
Настройка рабочей системы после установки

Desktop
   ```
   set -x PLAYBOOK desktop.yml
   curl -sL https://raw.githubusercontent.com/GavrisAS/ansible/main/setup.fish | fish
   ```

Дополнительно, после подключения VPN
   ```
   set -x PLAYBOOK vpn.yml
   curl -sL https://raw.githubusercontent.com/GavrisAS/ansible/main/setup.fish | fish
   ```
