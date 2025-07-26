# ansible
Ansible playbooks

1. Разрешаем sudo только для pacman и yay
   ```
   export EDITOR=nano
   sudo visudo
   ```
   добавляем строку
   ```
   <имя_пользователя> ALL=(ALL) NOPASSWD: /usr/bin/pacman, /usr/bin/yay
   ```
   
2. Предварительные настройки (Ansible, git, AUR, keyring)
   ```
   sudo pacman -Syu ansible git --noconfirm
   ansible-galaxy collection install kewlfft.aur
   sudo pacman -Sy cachyos-keyring
   ```

3. Выполнить
   ```
   ansible-playbook setup_cachyos_< нужный файл >.yml --ask-become-pass
   ```
