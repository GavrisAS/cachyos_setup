# ansible
Ansible playbooks

0. Разрешаем sudo только для pacman и yay
   ```
   export EDITOR=nano
   sudo visudo
   ```
   добавляем строку
   ```
   <имя_пользователя> ALL=(ALL) NOPASSWD: /usr/bin/pacman, /usr/bin/yay
   ```
   
2. Установить Ansible и Git на свежую систему CachyOS:
   ```
   sudo pacman -Syu ansible git --noconfirm
   ```
   
4. Установить коллекцию Ansible для работы с AUR:
   ```
   ansible-galaxy collection install kewlfft.aur
   ```

6. Выполнить вручную обновление ключей перез запуском playbook
   ```
   sudo pacman -Sy cachyos-keyring
   ```

7. Выполнить
   ```
   ansible-playbook setup_cachyos_< нужный файл >.yml --ask-become-pass
   ```
