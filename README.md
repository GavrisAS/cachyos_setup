# Ansible Playbooks 
Настройка рабочей системы после установки

1. Разрешаем sudo только для pacman и yay (заменить имя пользователя на реальное)
   ```
   echo '<имя_пользователя> ALL=(ALL) NOPASSWD: /usr/bin/pacman, /usr/bin/yay' | sudo tee -a /etc/sudoers.d/nopasswd-pacman
   ```
   
2. Предварительные настройки (Ansible, git, AUR, keyring)
   ```
   sudo pacman -Syu ansible git --noconfirm
   ansible-galaxy collection install kewlfft.aur
   sudo pacman -Sy cachyos-keyring
   ```

3. Клонируем репозиторий и выполняем
   ```
   ansible-playbook setup_cachyos_desktop.yml --ask-become-pass
   ```
curl -sL https://raw.githubusercontent.com/GavrisAS/ansible/main/setup.fish \
        | fish - desktop.yml
