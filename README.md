# ansible
Ansible playbooks

0. Разрешаем sudo только для pacman и yay

    в файле
   ```
   export EDITOR=nano
   sudo visudo
   ```
   
   добавляем строку
   ```
   <имя_пользователя> ALL=(ALL) NOPASSWD: /usr/bin/pacman, /usr/bin/yay
   ```
   
2. Установить Ansible и Git на свежую систему CachyOS:

    sudo pacman -Syu ansible git --noconfirm
   
3. Установить коллекцию Ansible для работы с AUR:

    ansible-galaxy collection install kewlfft.aur

4. Выполнить вручную обновление ключей перез запуском playbook

    pacman -Sy cachyos-keyring

5. Выполнить

    ansible-playbook setup_cachyos_< нужный файл >.yml --ask-become-pass
